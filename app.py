from flask import Flask, request, redirect, render_template, url_for, flash, session, send_file
import mysql.connector
from flask_session import Session
from otp import genotp
from cmail import sendmail
from otp import genotp
from itsdangerous import TimedJSONWebSignatureSerializer as Serializer
from tokenreset import token
import io
from io import BytesIO
import os
app = Flask(__name__)
app.secret_key = 'P@supuleti1302'
app.config['SESSION_TYPE'] = 'filesystem'
db = os.environ['RDS_DB_NAME']
user = os.environ['RDS_USERNAME']
password = os.environ['RDS_PASSWORD']
host = os.environ['RDS_HOSTNAME']
mydb = mysql.connector.connect(host=host, user=user, password=password, db=db)
# mydb = mysql.connector.connect(host='localhost', user='root', password='admin', db='rs')

Session(app)
@app.route('/')
def index():
    cursor=mydb.cursor()
    cursor.execute("select * from admin")
    items=cursor.fetchall()
    return render_template('index.html')


@app.route('/register',methods=['GET','POST'])
def register():
    if request.method=='POST':
        username=request.form['username']
        email=request.form['email']
        password=request.form['password']
        passcode=request.form['passcode']
        passcode='4567'
        cursor=mydb.cursor(buffered=True)
        # check if the email already exists
        cursor.execute('SELECT COUNT(*) FROM admin WHERE email = %s', [email])
        count = cursor.fetchone()[0]
        print(count)
        if count > 0:
            flash('Email id already exists')
            return render_template('login.html')
        # check if the passcode matches
        elif passcode != passcode:
            flash('Invalid passcode')
            return render_template('register.html')
        # insert the admin details
        else:
            data=cursor.execute('INSERT INTO admin VALUES(%s,%s,%s,%s)',(username,email,password,passcode))
            print(data)
            mydb.commit()
            cursor.close()
            flash("Admin account created successfully")
            return render_template('register.html')
    return render_template('register.html')
  

@app.route('/login',methods=['GET','POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        cursor = mydb.cursor(buffered=True)
        cursor.execute('SELECT COUNT(*) FROM admin WHERE username = %s AND password = %s', [username, password])
        count = cursor.fetchone()[0]
        if count == 0:
            flash('Invalid username or password')
            return render_template('login.html')
        else:
            session['user'] = username
            return redirect(url_for('admindash'))
    return render_template('login.html')




            
         

@app.route('/uregister', methods=['GET', 'POST'])
def uregister():
    if request.method == 'POST':
        username=request.form['username']
        email=request.form['email']
        password=request.form['password']
        mobile=request.form['mobile']
        experience=request.form['experience']
        companyname=request.form['companyname']
        qualification=request.form['qualification']    
        otp = genotp()
        session['mobile'] = mobile
            # Send OTP to user's email 
        subject='Thanks for registering to our recruitement system'
        body=f'Use this otp to register {otp}'
        sendmail(email,subject,body)
            # insert into database
        cursor = mydb.cursor(buffered=True)
        cursor.execute('insert into user values(%s,%s,%s,%s,%s,%s,%s)',(username,email,password,mobile,experience,companyname,qualification))
        mydb.commit()
        cursor.close()
        flash('OTP sent successfully. Please enter the OTP to complete the registration process.')
        return redirect(url_for('otp'))
    return render_template('uregister.html')
@app.route('/otp', methods=['GET', 'POST'])
def otp():
    if request.method == 'POST':
        user_otp = request.form['otp']
        flash('Account registered successfully!')
        session.pop('otp', None)
        session.pop('mobile', None)
        return redirect(url_for('login'))
    return render_template('otp.html')
@app.route('/ulogin', methods=['GET','POST'])
def ulogin():
    if request.method == 'POST':
        username=request.form['username']
        password=request.form['password']
        cursor = mydb.cursor(buffered=True)
        cursor.execute('SELECT COUNT(*) FROM user WHERE username = %s AND password = %s', [username, password])
        count = cursor.fetchone()[0]
        if count == 0:
            flash('Invalid username or password')
            return render_template('ulogin.html')
        else:
            session['user'] = username

            return redirect(url_for('userdash'))
    return render_template('ulogin.html')
@app.route('/forget',methods=['GET','POST'])
def forget():
    if request.method=='POST':        
         username=request.form['username']
         cursor=mydb.cursor(buffered=True)
         cursor.execute('select username from user')
         data=cursor.fetchall()
         if (username,) in data:
            cursor.execute('select email from user where username=%s',[username])
            data=cursor.fetchone()[0]
            cursor.close()
            subject='Reset Password for {email}'
            body=f'Reset the passwword using -{request.host+url_for("createpassword",token=token(username,120))}'
            sendmail(data,subject,body)
            flash('Reset link sent to your mail')
            return redirect(url_for('ulogin'))
         else:
            return 'Invalid user id' 
    return render_template('forget.html')

@app.route('/createpassword/<token>',methods=['GET','POST'])
def createpassword(token):
    try:
        s=Serializer(app.config['SECRET_KEY'])
        username=s.loads(token)['user']
        if request.method=='POST':
            npass=request.form['npassword']
            cpass=request.form['cpassword']
            if npass==cpass:
                cursor=mydb.cursor(buffered=True)
                cursor.execute('update users set paswword=%s where username=%s',[npass,username])
                mydb.commit()
                cursor.close()
                return 'Password changed successfully'
            else:
                return 'Written password was mismatched'
        return render_template('newpassword.html')
    except Exception as e:
        print(e)
        return 'Link expired start over again'
    else:
        return redirect(url_for('login'))
@app.route('/admindash')

def admindash():
    cursor=mydb.cursor()
    cursor.execute("select * from admin")
    items=cursor.fetchall()
    return render_template('admindash.html')

@app.route('/jobnotification',methods =['GET','POST'])



def jobnotification():
    if session.get('user'):
        if request.method == 'POST':
            jid = request.form['jid']
            jobtitle = request.form['jobtitle'] 
            jobdesc = request.form['jobdesc']
            files=request.files['filedata']
            filedata=files.read()
            filename=files.filename
            duedate = request.form['duedate']
            cursor = mydb.cursor(buffered=True)
            email = session.get('user')
            cursor.execute('insert into adminnotification(jid,jobtitle,jobdesc,duedate,filedata,filename) values(%s,%s,%s,%s,%s,%s)',[jid,jobtitle,jobdesc,duedate,filedata,filename])
            mydb.commit()
            flash(f'{jid} added successfully ')
            return redirect(url_for('admindash'))#adminhome
        return render_template('jobnotification.html')
@app.route('/edit',methods=['GET','POST'])
def edit():
    cursor = mydb.cursor(buffered=True)
    cursor.execute('select jid from adminnotification')
    data=cursor.fetchall()
    if session.get('user'):
        if request.method=='POST':
            jid = request.form['jid']

            jobtitle = request.form['jobtitle'] 
            jobdesc = request.form['jobdesc']
            files=request.files['filedata']
            filename=files.filename
            duedate = request.form['duedate']

            
            
            cursor = mydb.cursor(buffered=True)
            cursor.execute('update adminnotification set jid=%s,jobtitle=%s,jobdesc=%s,filename=%s,filedata=%s,duedate=%s where jid=%s',[File.read(),jid,jobtitle,jobdesc,duedate,filedata,filename])
            mydb.commit()
            cursor.close()
            return redirect(url_for('admindash',username=session['user']))
        return render_template('edit.html',data=data)
    return redirect(url_for('register'))
@app.route('/allnotifications')
def allnotifications():
    cursor = mydb.cursor(buffered=True)
    cursor.execute('SELECT jid,jobtitle,jobdesc,duedate,filedata,filename from adminnotification')
    adminnotification=cursor.fetchall()
    cursor.close()
    return render_template('allnotifications.html',adminnotification=adminnotification)
@app.route('/viewfileadmin/<jid>')
def view(jid):
    cursor=mydb.cursor()
    cursor.execute('SELECT filedata from adminnotification where jid=%s',[jid])
    data=cursor.fetchone()[0]
    cursor.execute('select filename from adminnotification where jid=%s',[jid])
    filename=cursor.fetchone()[0]
    #mention as_attachment=True to download the file--remove it to display the file
    return send_file(BytesIO(data),download_name=filename)


@app.route('/userdash')

def userdash():
    cursor=mydb.cursor()
    cursor.execute("select * from admin")
    items=cursor.fetchall()
    return render_template('userdash.html')


@app.route('/applyforjob',methods =['GET','POST'])
def applyforjob():
    if session.get('user'):
        if request.method == 'POST':
           
            uid = request.form['uid']
            
            files=request.files['filedata']
            filedata=files.read()
            filename=files.filename
        
            
            
            
            
            
           
            cursor = mydb.cursor(buffered=True)
            email = session.get('user')
            cursor.execute('insert into usernotification(uid,filedata,filename) values(%s,%s,%s)',[uid,filedata,filename])
            mydb.commit()
            flash(f'{uid} added successfully ')
            return redirect(url_for('index'))#adminhome
        return render_template('applyforjob.html')
@app.route('/aljobnotifications')
def aljobnotifications():
    cursor = mydb.cursor(buffered=True)
    cursor.execute('SELECT jid,jobtitle,jobdesc,duedate,filedata,filename from adminnotification')
    adminnotification=cursor.fetchall()
    cursor.close()
    return render_template('aljobnotifications.html',adminnotification=adminnotification)

@app.route('/view-delete')
def dview():
    
    cursor = mydb.cursor(buffered=True)
    
    cursor.execute('SELECT jid,jobtitle,jobdesc,duedate,filedata,filename from adminnotification')
    adminnotification=cursor.fetchall()
    cursor.close()
    return render_template('delete.html',adminnotification=adminnotification)
@app.route('/delete/<jid>')
def delete(jid):
    cursor = mydb.cursor(buffered=True)
    cursor.execute('delete from adminnotification where jid=%s',[jid])
    mydb.commit()
    return redirect(url_for('dview'))
@app.route('/status')
def status():
    cursor = mydb.cursor(buffered=True)
    
    cursor.execute('SELECT uid,filedata,status from applicants')
    usernotification=cursor.fetchall()
    return render_template('status.html',usernotification=usernotification)
@app.route('/viewfilestats/<uid>')
def view31(uid):
    cursor=mydb.cursor()
    cursor.execute('SELECT filedata from usernotification where uid=%s',[uid])
    data=cursor.fetchone()[0]
    cursor.execute('select filename from usernotification where uid=%s',[uid])
    filename=cursor.fetchone()[0]
    #mention as_attachment=True to download the file--remove it to display the file
    return send_file(BytesIO(data),download_name=filename)



@app.route('/applicants')
def applicants():
    cursor = mydb.cursor(buffered=True)
    
    cursor.execute('SELECT uid,filename,status from usernotification')
    usernotification=cursor.fetchall()
    return render_template('applicants.html',usernotification=usernotification)
@app.route('/update/<uid>',methods=['GET','POST'])
def update(uid):
    if request.method=='POST':
        print(request.form)
        update_status=request.form['updatestatus']
        cursor = mydb.cursor(buffered=True)
        cursor.execute('UPDATE usernotification set status=%s where uid=%s ',[update_status,uid])
        mydb.commit()
        return redirect(url_for('jobnotification'))
    return render_template('update.html') 
@app.route('/about')
def about():
    return render_template('about.html') 
@app.route('/contact',methods =['GET','POST'])



def contact():
    if session.get('user'):
        if request.method == 'POST':
            name=request.form['name']
            email=request.form['email']
            phoneNumber=request.form['phoneNumber']
            subject=request.form['subject']
            message=request.form['message']
            cursor = mydb.cursor(buffered=True)
            email = session.get('user')
            cursor.execute('insert into contact(name,email,phoneNumber,subject,message) values(%s,%s,%s,%s,%s)',[name,email,phoneNumber,subject,message])
            mydb.commit()
           
            return redirect(url_f or('index'))#adminhome
        return render_template('contact.html')
      





   

if __name__ == '__main__':
    app.run(debug=True, use_reloader=True)

            
         
         
        
       
            

