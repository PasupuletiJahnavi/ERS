from itsdangerous import  TimedJSONWebSignatureSerializer as Serializer
def token(username,seconds):
    s=Serializer('P@supuleti1302',seconds)
    return s.dumps({'user':username}).decode('utf-8')
