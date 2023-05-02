-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: rs
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `passcode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('abhi','neversettle@gmail.com','admin','janu@123'),('hone','manishaboddu949@gmail.com','admin','4567'),('honey','rkljdfkj@gmail.com','admin','janu@123'),('jan','jahnavipasupuleti1302@gmail.com','123','ad'),('manisha','manumanisha1999@gmail.com','admin','janu@123'),('pra','kal123@gmail.com','admin','janu@123'),('sita','manisha949@gmail.com','1234','4567');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminnotification`
--

DROP TABLE IF EXISTS `adminnotification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminnotification` (
  `jid` int NOT NULL,
  `jobtitle` varchar(50) DEFAULT NULL,
  `jobdesc` tinytext,
  `filedata` longblob,
  `duedate` date DEFAULT NULL,
  `filename` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`jid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminnotification`
--

LOCK TABLES `adminnotification` WRITE;
/*!40000 ALTER TABLE `adminnotification` DISABLE KEYS */;
INSERT INTO `adminnotification` VALUES (0,'analyst','janu',_binary 'Errors\r\nname error:name n3 is not defined did you mean:n1?\r\n(here n3 is not declared as variable or value it is showing to verify the n1 if you type mistakenly\r\n 2. help()\r\nsyntax error:unexpected indent (spaces can not be taken)\r\n','2023-04-29','d1.1.txt'),(21,'analyst','computer science',_binary 'Integers:any number it might be positive or negative will be treated as integer\r\nEg:number=8\r\nn1=-9\r\ntype(n1)\r\n<class \'int\'>\r\nany number with a decimal number it might be positive or negative will be treated as Float\r\ntype(value)\r\n<class \'float>\r\nEg:float=-6.3\r\n1.any thing between the quotes will be treated as strings(\'\',\"\",\"\')\r\nAsssigning single vaue to a single variable\r\nfruit=\"apple\"\r\nAssigning multiple values to single varaiable\r\nV1=(1,2,3)\r\nAssigning multiple values to multiple varaiables\r\nL1,L2,L3=5,6,7\r\nAssigning single values to multiple varaiables\r\ng1=g2=g3=8  ..... it is nothing but tuple','2023-04-30','d1.txt'),(23,'da','ebfsda',_binary '�\��\�\0�Exif\0\0II*\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0V\0\0\0\0\0\0\0^\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0i�\0\0\0\0f\0\0\0\0\0\0\0I\0\�\0\0I\0\�\0\0\0\0� \0\0\0\00210� \0\0\0\0\0\0� \0\0\0\00100�\0\0\0\0��\0\0�\0\0\0\0\�\0\0\0�\0\0\0\0\�\0\0\0\0\0\0\0�\�\0C\0\n  \n
\n

\r\r

�\�\0C		\r
\r�\�\0\0\�\0\�\0�\�\0\0\0\0\0\0\0\0\0\0\0\0 	�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0�@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\�8 \0\0\0\0\0 8\�þ\0iI�\�\0\0\0\0\0\�ig�`�
0\0\0\0\0\0\03,� �\Z`\0\0\0\0\0\0fYfA�4,�\0\0\0\0\0\0̲̃hY�U\�\�Wlw�q��~v\�\�I�\�㊺U\�\�1\�93,� �\Z` R\�煷�\�Q\�Ѻ\� \��g0\�\�\�\�~�s�z�����#2\�2�f\0uM>w\�S\�}cج\ZPMK\"y�\�\�\�v�Տ8\���Y�`�
0�i\�ߠ-^�vp�V$�}��^�T\�	J\��%+33,� �\Z` Ku�\�\�]i	\�|\rhY��^\�c\���ޣ\'�L6\�3,� �\Z`\0\0\0\0\0\0fYfA�4,�\0\0\0\0\0\0̲̃4P@\0\0\0\0\0\0\�r�h�\0\0\0\�@\0\0.S �\Z`\0\0\r �˔݀\0\0Fe�d),\�\0\03u9�\0\�#B\�\0hOg\�\0\0�l\�\0\0?z8\0\0\�O\�\00I�dd\0c�@\0\01� \02`\0qM�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0-\0\0\0\0\0\0\0\0\07  05@4`!#6�\�\0\0��h\�:�9]d\����J̒Vd��$��$�\�%fI+2IY�J̒Vd��$��$�\�%fI+2IY�J�\�O\�9�?K3\�.Wqt`\�\�i�
L�ZdB\�\"��ȅ�D-2!i�
L�ZdB\�\"��ȅ�D-2!i��)8\��)�J^\�~\�r=){��wM\�\��\�?\�\�7җ��Ȑ\�5�N�w��\�\�\"w\ZT�R܂g�᤽*\�>ao�I�\�6�3-�kȦxD�\�2?{�\��R\��o\�.\�F�\�Yzm��ƴ\'\�l�<\�\"*o��\�Np]:>-\�\��\�c�\�\r8��\�M\�\��\�?r�l���Ҏ\�T���֟��l7R\�\�\��:\�\�U^[\\iä�x\���n-�w{�\��R\��_�B�P>N)5��\�U`O\�\�\���\�C�pQ1\��N�(\�}C$f�\�m\����p\�t\�J^\�\�-\�8t�枉\0\�h�\�ȺX\�爍k��#H\�\���\���2)\�\�`\�*1�-�8�\�\�3�\�<��\�t\�J^\��\�q�){��wM\�\�Y�w|�	epK+�Y\\\�\��W��%��,�	epK+�Y\\\�\��W��%��,�	epK+�G
0r\�\�K .؜\Z\�\�\�\'�85���N\rbpk�X�\Z\�`V\'�85���N\rbpk�X�\Z\�\�\�\'��`\�җ��\0B\�M\�\��\�w\�L&��\�кn?��Q}�,�ˈ\��\�z\�D�\�\�\�$7��\�=D\��R��3¥n	\�\�^��/x^:\�u\�x\�\�\�ׅ\�
\�X����/x^:\�u\�x\�\�\�ׅ\�
\�^\Z��\�5:�\�V?\�t\�\�\�\"�����E-@)|\�;P\nZ�R\�\"����ѱϹ\�&\�}ץ\�+\rIXjJ\�RV\Z��ܥ���5%a�+\rIXjJ�\�\�Y��G�\�\0,\0\0\0\0\0\0\0\0\0!2\"103AQR��\�abpq��\�\0?�ND\�5pc�@\�O\�X\�\�\�\�\�\�>#@\�O��P�|\0$М�\�\�rO\�F&�\�{\�\�\�\��\�\�\�-\�c\�\��%xvO\�\�\�X��\�\�7\�1��/.�;��&\�1o\�)����5\�i�B�u�w�X¼\�{\�\�\�\rkUvi�x�\�D\�\�\�민�\�\�\�\��\�{CL�Q��\�q�Cd\\�n��\0�ǋ\��Ði�\�jE\�dSu\��BE\�\�8��\�ۼ\�P\0Nf6޿H]*�BI6\��\�\0\0\0\0\0\0\0\0\0\0\0\0\0 1!0@Ap��\�\0?\� ��\�Y��\�[\�&���5B�\�SBEl��5�\�\0E\0\0  \0\0\0\0\0\0�15 !Qs\�\�\"ADE�\�02@a��#$BRqr��3`t�Cbd���\�\0\0?�M8�\�rh����G��}_�:\Z\�vG\�C\rf�\�k5��\�Y�|\Z\�c\�0\�k��X�5�\��a�\�>\rf�\�k5��\�Y�|\Z\�c\�0\�k��X�5�\��a�\�>\rf�\�Y\�ϣ\�˳2�HL�D\\e֓\�e�̛WA.\�f�$�\�W\�\�[(�\��}6ԡ�A\�H\� \�$a�t0\�:	d�2�F A#����A\�H\� \�$a�t0\�:	d�2�F A#����A\�HSg\�\n\�q�\�RA\�\\_ѩ\�n\���\�,\�\�?�쇶cw4�\�\�{!\�\�\�-��\�\�{f7sKl�\�fUM:\�J��g/xJRq���#Lm\"\�9�yf\�$g\'��p\�:\�\�4Df�4�\�\"\�\�|\�n,\�\�1\���\�\�8�\���E���IH�ෟq-4�����\�CB\�=\r\�^;-��\0-�#0\�8uP�%&��\�j�:�!\�\\��ˬ�S\�=����{2/b����\���\\u��S5)I-b��\ZI �U�Z\r:\r#�?�s\�!v�\�\�6d\�:Nϸ2�3���_ED\Zx\�J;\�\� `fM(�Ֆ���\�X�q\rF��\'�\���\"Z6oX3iI-$���t�.�RQ\�,\�\�1��[g\��\"\�+�?:~a\�\�P\�O$�5k�-3�\�k)�AY=VHr�\�\�h��L햀\�pi`�n\�9\�[�\�X�r\�7\�ɨ�\�\��\�l\�\�\��sw\\�
��\�\�>�\�S*eeԢ	Ko�\�\���\�2�j	��\�\�\�\�֕{\�l\�\�im�\�̋د\�!�\0:~a����I��\�@C0�9U�\�Z\n\�[�\�)�U�\0h�\�M�\�q��\�/\��\0	�x��aHU\�2�nZf\�\�3\�Zz�\�/\�\Z\"�K�\�5\n\�\�qv2j��+\�9h�Y��cw4�\�\�f-�^6fFG$���\�	M-\�$\�j@C%�Y/�\�_��\� z)\�Jo��T;oI[f�����\�]w�җ\�T\�h\�b%&\�f֎�\��\0\'� J\�l\�\�9�ZT\��7$]\�H8�KS�R�+\�$�\�\�4Zca\�\�(�ZR~3 \�=S�!�Q��\�6^\�333\Ze�2��rKVa\�\�\�-��\�\�{f7sKl�\��ٍ\�\�\�\�\�ȶ\�ӰS=6�_D_D_D_D_D_D_D_D_D_D_D_D_D_D_D_D_D_D_D\"6\Z\�EǙ���\�Y�����q\�`\�z-\�U�j�;Uaګ\�Xv�õV��\�5��\�ZՖ��\�U�j�;Uaګ\�Xv�õV��D5��o3+g3\�d\�Kl�\�����\�\�RD�}ٜ�9\�<�\�R^�\�uژ���\�\�d�}\��\�Ol\�\�j\�|�$\�B�{5\�O��C�,�me4�\'2?@\�;\�\'q6T�\�!k�Dsy�\0\nE?��\�A6\�i���Qz�\�ɦ�SR\�r\"y��Eq��\�->9�Y+!\Z\�I\�A��\�j�	���\�\�_\�w�1\�U�\�yW\�\�_\�w�1\�U�\�yW\�ßGs\�y<�\\\�kU㼫��\�\�;ʿ�\�*�c����\�\�;ʿ�\�*�a-ŔA�\\[�\�\n;Yx\�K\���{�\n�v:��ҧ�FC����A\�HĠ\�bPu\�1(:\�\�,\�7\�ֲ��2\�1�A\�HĠ\�bPu\�1(:\��t��\�t+�+A%/$\��+\�7\�H����(\�\�O\�bL\�>#f�\��4O�ę�|F$\�\�16h��3D��I�\'\�bL\�>#f�\��4O�e\�yI4,�y6��\�/�\�\0*\0\0\0\0\0\0\0\0\0!1Q\�Aa� q��\�\�\�0@�`��\�\0\0?!�4pf�$P�FO\�Dn�K�.\\�r\�˗.\\�r\�ˑǥ\0~�@\�]\�\�=n@LNH\�\�%2+pWF�\�\�]\Z+�Eth��Ѣ�4WF�\�\�]\Z+�Eth��Ѣ�4WF�\�\���Pf\�`��0˙̍¢��\��šFү4��\�m*\�O��\�Fү4ܒ?\��D ��& �*�6\�M\0&�7j&b91A\r\�!4\\8\��W#\"Eظ��\�HfSڂDM��Aq\0yy��0\�\�n^h�iW�n@C�\0\�	\�LJ�\n$�r�3#?[��\rN5u�o\��  \�b͘4G
\n@�\�\�����I�=\��\�4\�\�ըvs�4U��\'r\�EJ�\�sl�>\�??�n�\���\0��V����NgPawx�\0ʠl�P�\�\�CqH��XzȜ�gm�H�&7�|�fiGj�ݎ\�\�6�y�\�\�Z�P�0\�H�H\r�B%\0����J\�T\�C�9n\��s��&:eqQs؋2\0\r���p��,G~$6P(Wj\����(\�U曒\�(B�Nh�#\��\'�\0�h\�\�D\"0\�\0\�\�QD�9��\�\nD[\�\"\'�\�3�ņH�k0Aa\Z\�I\n`T�<\�GÃ� ̔\"	;\npn^h�iW�|�\�۷�(\�U\�Sy���QKq+\�;�`�\�\�\�;�`�\�\�\�;�`�\�\�\�;�`�\�\�\�;�`�,�&�\�\�TsK\�\nׂ�\�x+\�\n\���\�x+\�\n߂˳\�\�eo�^\�W�\�{�^\�W�\�k�F\�5\���ү4�e��\�\��\� �O�$\�wwR\�dg�\�\�\�h�iD\n�\r!�\�\ZƠ���y��\�\�\\\�/�u�HԔs��\�4��A�g�\�.\��\�>t\�n�=|\�\�\�\�_=|\�\�\�\�^�\0��Y\�篞�z�\�篞�z\�\�\�\�3;\�&� \0\��\0[̘Q0�7w&\n�\�X:� U`\�V=W@+�٠ՏU`\�U���uF\�\�\0\�0�aD\�}D\�
�$E9\�8p\�\���8p\�\0\�#��0J\��\�\0\0\0\0\0\0�I$�I$�I$�I$�I$�I$�I$�I$�I$�H\0\0\0\0\0\0\0�H$�I$�I$�	 I$�I$�	$I$�I$�$�I$�I$�@$�		vU�\�H�&���>�\0�@$�J#  H�\\a��dI\0�.\�\���I @\0\0\0�	$I$�I$�$�\0\0\0\0\0\0$�\0\0\0\0\0\0�$�H�I\0�\0\0\0\0\0�I$�I$�I$I �\0�\0�I$�I$�I$I$�I$�I$�I$�I$�I$�I$�I$�I$�I$��\�\0)\0\0\0\0\0\0\0\0\0!1AQq�a��0�\�\��\�p�\��\�\0?�\0\'<@n\�]�������\�Ji�#W��2\�\�J
��?Ũ�ƥ\���\�F��\0��DA\�mR�X\�|��\�Ni1ia\��w��
g���\�;\��\�\�\�$)X��;\�\�N�\�\�F�w�\�u��\�\��ϻ\�\�wS���E�9a�\05�5\�\�%��4@�%\�#sS&(��\�佯\�4+ ��潶����ϟ\�\�??sR\�\�\�z~ǯ�\�גsH��G)g���\�\�al\�խ�.q\�`�\�\�\�ڔ�B�
S�\�8{4Ը��BD\�\�\�\�X�a~[{�3��%\�\��������g)&K+\�P�\���dHdL\�zY75\�	\��R\��\�Ά �<g>\�қ���\�\�ec��\�\�)\�]�\0L�\0�\�\0\0\0\0\0\0\0\0\0\0\01!0AQqp��\�\0?��*���#HZ\�?Q��Ol�Jk\�iɂ3SSP\�z�}�T\�_)�\�L\�Ԡ\��\�D�\�%yM&�\�MN\�Mq���4�\�\�A�n��DD���\�R\�b�\�K4�z\"\��\��\�\0)\0\0\0\0\0\0\0!1AaQ��� \�@q0�`�\�\��\�\0\0?�\0\r\�B\�9x�\�/Ol�)\�~���ӧN�:t\�ӧN�:t\�\��A�B?HT��\�Ys�6K�3\�qWߨQ��ۦء�Su�JK���L�2dɓ&L�2dɓ&MO\�\�\�@C��\�[�FB��\�\r\�F5ù\�\�֣�⮶3ۭXw}\�sލ�~�a\�\��\�z61�N4m�w޸w=\�\�ƶ�ЛI`�\�@.��*�Nm\�\� �\�\�7��\�A���h�2	^�1�\nS\�bw��\�\�0�H\�\�\�p���V\n���l�D�!4,$�J���R����,	G:�Ѷ\�z\�\�\��c\Z��H\�t\��B\r^0EA6\�Q�ꤲ_4P4� M\�0\�\�^�i\�\�\"d\�\�\�!I�26*\�\�.�iq$\��0,��\�0:��HX�q�\\\�\�\��say0����\�\\�\�a\�\��\�z61\����\0T�\�h�+-\�o\�]\0۱öQΞc<	&ĸ�\�,i�INRLd��L�Q�\0�\�IRӼ�HalJ\�s\�\r�{uZGeEy��G\r\"xǽ\�Q\�QWA89\�\�\�\0\�h\�F\�w}\�sލ�|a\�(c̈�\�)O�>^\�9\�J\0E\r��!fq\��\�I�\�IL�L�j�\0�C\0w\Zw\�.!�N⬥\�\�2�\�&\�\�\�\��Zr^\n\�<��Ѷ\�z\�\�\��c\Z\�\�\��M\�E,@l�Hٓf�\�\nl\�7\�r�)Y#,QD\�6b�\\VįYa-=A�*��\� �|\�\ZI\���rkXs:Z\������rM�\\\�j3�E\�$\�L\�q,�Zb%�I`\�c:\��\� M\\h\�\�p\�{ѱ��TTTTTi�C��ƍ�\��\�\��\'\Z6û\�\\;�\���I�=Ĺr\�˗.\\�r\�˗.\\�r\�`9��\rb\�qXw}\�s\�uڳ��6\�qy+�\� ��J\�y+�\� ��Jŷ��\�\�\�\�Sm\� ��J\�y+�\� ��J\�y+\�\���R Mȶ+\�p\�{ѱ�\�o���V\�X�HMcI_\�^�Ւ\�ZIQiX� \Z6û\�\\(�c\�\0\�pn�
$����������\�Y!:�%\�\�o}�\0\�ʛ\�e\��H\�\�\�ݩ�������y2\�,+hf4 u�ܙ�>�ct,k\�Q.�H��\�.\�=<���_�W\�U��~�_�W\�U�����\��s_V�ԫ\�*�J�R�ԫ\�*�J�T\�\�_S��\�d�:\�ݖX,@9��+�\�(\�{!U\�\�jիYj��ԟ�\r\�V�Z�Q�\����+�\�`\�I(���X�!��\��\�F�\Z4{Xx�hѣF.�~	X5�L\�\�?�\�','2023-04-28','LOGO1.jpg');
/*!40000 ALTER TABLE `adminnotification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phoneNumber` varchar(10) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES ('janu','sita','9491833386','hi','hi'),('janu','sita','9491833386','hi','hi');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `experience` varchar(250) DEFAULT NULL,
  `companyname` varchar(30) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('honey','honey123@gmail.com','admin','6283572043','7','manu','bsc'),('ja','rkljdfkj@gmail.com','admin','098765432','3','kal','bsc'),('jahnavi',' rkljdfkj@gmail.com','admin','12345789','3','janu','bsc'),('jothika','manishaboddu2043@gmail.com','admin','456789098','2','janu','bsc'),('kalu','manumanisha1999@gmail.com','admin','1234567432','2','janu','bsc'),('kalya','pasupuletijahnavi88@gmail.com','admin','9121197129','7','manu','bsc'),('man','jahnavipasupuleti1302@gmail.com','admin','8754567890','1','janu','bsc'),('manish','thedreamer01032019@gmail.com','admin','8964368','7','tcs','bsc'),('sit','man123@gmail.com','admin','896536894','6','manu','bsc'),('sita','manu123@gmail.com','admin','896536890','6','manu','cscs');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usernotification`
--

DROP TABLE IF EXISTS `usernotification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usernotification` (
  `uid` int NOT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `experience` int DEFAULT NULL,
  `companyname` varchar(20) DEFAULT NULL,
  `qualification` varchar(20) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `filedata` longblob,
  `status` varchar(20) DEFAULT 'NOT UPDATED',
  KEY `uid` (`uid`),
  KEY `uname` (`uname`),
  CONSTRAINT `usernotification_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `adminnotification` (`jid`),
  CONSTRAINT `usernotification_ibfk_2` FOREIGN KEY (`uname`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usernotification`
--

LOCK TABLES `usernotification` WRITE;
/*!40000 ALTER TABLE `usernotification` DISABLE KEYS */;
INSERT INTO `usernotification` VALUES (0,NULL,NULL,NULL,NULL,NULL,'d1.txt',_binary 'Integers:any number it might be positive or negative will be treated as integer\r\nEg:number=8\r\nn1=-9\r\ntype(n1)\r\n<class \'int\'>\r\nany number with a decimal number it might be positive or negative will be treated as Float\r\ntype(value)\r\n<class \'float>\r\nEg:float=-6.3\r\n1.any thing between the quotes will be treated as strings(\'\',\"\",\"\')\r\nAsssigning single vaue to a single variable\r\nfruit=\"apple\"\r\nAssigning multiple values to single varaiable\r\nV1=(1,2,3)\r\nAssigning multiple values to multiple varaiables\r\nL1,L2,L3=5,6,7\r\nAssigning single values to multiple varaiables\r\ng1=g2=g3=8  ..... it is nothing but tuple','NOT UPDATED'),(21,NULL,'sita',NULL,NULL,NULL,'d1.1.txt',_binary 'Errors\r\nname error:name n3 is not defined did you mean:n1?\r\n(here n3 is not declared as variable or value it is showing to verify the n1 if you type mistakenly\r\n 2. help()\r\nsyntax error:unexpected indent (spaces can not be taken)\r\n','NOT UPDATED'),(23,NULL,NULL,NULL,NULL,NULL,'notes.docx',_binary 'PK\0\0\0\0\0\0 \0\�\�=\�\0\0�\0\0\0\0\0[Content_Types].xml��\�n\�0E\��\n�\�B�\�EP��h\�e .����\�D|�\�\�\�w(�Bᒖ\�$�\�\�����7�\�8/�.\�U�`\�\�4Rw%����f�G�\�\r%;�g\�\�\�\�r}�\�3��/\�\�~\�\�\�P\�Ƃ�Nk�H_]ǭ��E �\�bq\�k�4\�4\�jy
�\�\��\�\rT>&qГ\�\�\�\�\�U2am/k�\�\�;ݜ�\�\n\"\�5~#��H
�:�N\� \�UʞpR�\�B=N<Y\�\�؈3VǑP��l�D�\�	L�$@ŉ!�8�O2�$ck�OO\�1$�!5}\'\�\�S=N�]|O�~\�UR�\� ���54�\�*B\n\�\�}\�\�\�\�\�:\�@\� ~�\�8�|p\�z�V�\�\��̽	tnIJ�n\�YG�~�\�\�|~��
�\�\�5|\�# \�#\�_\�ɺ\�IO\�\�_\�A���\�F@zs\��y\�\��̬eKkQ\��q\�\�ƞ�gC譪�\�\�!&\���\�C\���\�\�?%n\�ږ��K�(� ����u�\���SG	��\�\�\�_�\�/PK\0\0\0\0\0\0 \0(K-\�\0\0\0N\0\0
\0\0\0_rels/.rels��\�JA�\�>Ő{w�D����Л\��\0a&�;�\�L\�\�\�EхR=\�\�\�
d�;�Y����uӂ�h�\�q4\�\�߭�A�\�pN���\�u\� �Q\�R�|.�Rb10�\����(`iR�X;C\�RKuF��#\�M\�^i�ɀn�T{g�\�n\r�?f�[ t(�mbZe�\�,���y$1\����q��h*\�i�\�\�\�0xK�\�> �rʋBё;��9�3��O�\�ķ\�kb�\�g�e�_нPK\0\0\0\0\0\0 \0W�^P\0\0�\0\0\0\0\0docProps/core.xml��\�n\�0�\�}�\�\�\�Y\�f%Aj+NE�T�V��\�\0.\�\"\�x���8\�\�\��\�\�Y\\����6`�ЪBY��\�\\�E�\�f��E\�S\�i�Th E\���d�0m\�\�j\�
pQ )G��\�\�{C0vl	��$8T\�\�J\�Ch\�P��
�y�\�`	�r\�)\�c3\�\�ـ4k\�t\0\�04 Ay��$\�\'� +\�ńN9sJ\�w.Z�\�\�\�:1۶Mڢ���3�1}~\�Z��\�ϊ�KΈ�\�\��\��\�f�zmC���]�-w�\��1+�\�\�\�:?\r\�
\���\�\�F\�\�Ug%>\�C\����P4\�[<*\�\�\�\�l�\�<͋8\�㼘�#2�%�\��\�\�O@y�\��\�k�ݓ�8#uW\�\�S�\0PK\0\0\0\0\0\0 \0�tF��\0\0\0&\0\0\0\0\0docProps/app.xml�ϱ\n\�0\�ݧ\�mR ���\�&8T\��\\k���\�,�\�Fuv<�\��U{�F6CL\�c\�\�Brh�u8\��\�\�\�i�z\�5@\�m\�}�H\���_�B%D2�t*r�9\�}�4\�1\�\��3�\�\�6�XI�p\'@
v> �\�L��֛\�\�\�=B\�\Z�\ratFSn\�t�\�A_!�>�sQʵT\�wI�o�\�	PK\0\0\0\0\0\0 \0��6\�\0\0>\0\0\0\0\0word/_rels/document.xml.rels��1O\�0�w~�\�8)\�\"T�
 u� f\�9\'�\�W �S�M\�u\�x\�t\�}g���OӒw\�A;\�i������Ҷ\�\��x���$���h�N{��\�\��\�PhtHt��\���c,\���\��Ǝr\����Y\'䛨�\�\�t\��Ѓ\� �d]q\�\�UFI\�wp��SJK�wrc�\�\�\�3 \�\�\��\�5 �1�����M	�(\�WS\"`��}����1�\�)��X��p\�1��)!\�Ɣ\�\�\�\�!v\�\�|҃���\�9l\��\�?\�FK\�S�Hg~��\'_56J�ģ\�A돃���
PK\0\0\0\0\0\0 \0ȝ-\�\�\0\0\0�\0\0\0\0\0word/webSettings.xml�\��J\�0\�OQrߦ)mD<���\�6l&f�\�\�\�\ru\�\�\�2d\�c\�o\�\�w`q:U��* X\Z]�;\�\�z\�=�B�	�\��SgU\���vmV^ �\�)EV�4h;���\�.�FJ�\�\�D�&\�g�������\�$78\�\�Y\�Vս�0|�B\�\�,<�=!��\�k�E\n��(?\�z����ɂH� ���ƅ_��� ��LBS*\�1��6*�\�\�\�B�\n�\�\��\�\�s�R}��br\�>\�@�ȴ\n�\�[�\'\��
PK\0\0\0\0\0\0 \0b\��\0\0\�
\0\0\0\0\0word/settings.xml�V\�n\�8}߯0\���/��֨St��-��A\�\�>\�\�\�\"Jr��\�~}�\")K�\�\'qx\�r8�\�\��g%{k0V��f\�\�A\�\�1z5\���ߟ�\�z\�1�3�\Z�\�l\�{\�׻\�Ăs�f{\�Bۉ\�Ӭp��\�����=\�4�K4�9ͪ���Y�gUɜX)ܶ?\Z��\��Ye\�$�8S���t\�d�˥\�?\�7�\�!�hWG\��\��-Di�7\��\�,��\�k�X+�\�6\��	\�ݠ\��S\�y�\�  k邔L�\��<p\�\�>�\�\�+2\�Վ���	ЃXf�m�O��4\Z��TT\�&������z�I	�SZ� ���\rkFQK#�
\�9,Y%ݜ-fˤp=�V�r�y[�\�kNxDs��nV�\�\�s,)�ge]�5ih��\�\�\�<W�\�l7^ҕ�WD< .�?�\�XU\�O�w�Z\��g\�\r\�P9|2\"��F�B혜��\�f:�\�\�E\�\�N� \'�˪\��ᒨx|SX�GC\�GAh{ 2\n�P\\=ibʗ�N��G\�%:`s\�l��s��b8mB;#h\�q{�I\�O`\�\0�]aec��\�A\�G�\�\�?\��\r�	0O����L:�ìܭfa\�6%љ�_1���2\�\�\�\Z�\�T7ML[�\�B�Qa؈�g{\�	<S\�A.=�\�{\��;�򞢶d[�\\G\�c��\�\�\��wlj2{6�\r,�khx_�\�`����;MJ�\�\�\�\�\�\�\�8���hC\�[�d\�\��O\�H\�\�\�\�@\�%��p6�\�=\�~\�u��\�Ϙ� x@gn�\�Ѐ<j\�\�[�^��J��E7u~\�E룴\�#\�\�\�	�:b݂�Y�:ixĺ�~Я?\�O��\�\�\\��x%̺G�\�fR�qZ\�$\�\�[�轡\���?��\�2�l�l\�\�\�;\�\�\�\��W\�z\��g\�|\nǗ�tކ�\�DǕ�\"\�.\�~\�mp��,S\�r\��n���ގ�/v�kpU{[\n	\�^Q7^�Z\�\�YSϫJ\�@�s��\�,�ѧz�~�$\�I$V�r�-<l����[\�kV�9�`�\�D���W\�\�N�f�w6��0����܎\���S?r��Z`\�G\��\�r%3\�\�\�\�\�1�\�?�\�7PK\0\0\0\0\0\0 \00^�z�\0\0�\0\0\0\0\0word/theme/theme1.xml\�XIo\�6�\�W�\�Ȳ$\�\�\'Fә�v1gZ��	%\n$������VKJ�I��2�\�폏O��\�Q\�@�HY���\�
�<`a�\�K\�\�\��\�\�BB\�<Ĕ\�di=a�/��]\�s��� �\�\�9^Z��Źm�\0���\�\n�\�^\�x�%Lyl�?ߌ\�\�\�dfg8\�-�\�\�~��4 h�XZ�\�[\n�\\\n�P�\r�\�6�Ɔ\���\�bE9z�ti���=\�ȓ�\�B\�\�\�Z\�e_^\�5�#�-����t%Ax?\�t<\�ׄ\�\�[�\�\����w{{��uj~\Z��\0,uzXo=w�+�-�\�y�&�\�\�\�[�\�~q}}\�/:x��{=�|2\��\�\����\�W�լ�\����_�-f^�A	M\��Zť�h\r��}> ��\nd��[\�e\�s9�k�\��\Z\0:�X�9�\��p\0�+�b�\�\�s�[\�\�4\�r��!��s�\�\�bviF�Fцe8��R�#\�n������\"J)\�\�gJ�\n��`4\rװ�\'��v}���\��\�\�1\�L�He�Mpb-!%\�X��	�5\�[W�4�fͯ�,�����f\�m嚍�Ţ-\�UN枽O�c�\'Js�ai��\�\�7!\�VޙM�h$LI��nTa�\������3h�\�\��\�^kI[�\�vJ�\�\�q� Diҋ�\�?�4\�\�\�#h\�O}
�XZ�f\�yl!LchY�\�\�a>6x8-�ɨ�\��\�P\�\�\������\�1T�Ӵp\�ο��}ZE$�#+ʹ\�c I�6	ў��ޞɮ0\\\\M�\�\�2\�\'�<\�7qy:0-\\֤y+\��ǵz\�R\�\��Mq?\���k�\�\\�7\���#��K�q�0�BE�k���zA\�,�J��\�\n�+yh\�\�a�\\�\�M\Z#�B��	\'\�N�v�\�̙v�\�QYgjuEa�\�\�Н:�3e�������и\�\�C�k��Ý�7\���\�4���\�\"^�跮�\��Tx\�U;�x\�|\�X&H=�p�<�M�c�>�;J��i^�zq:\�[\�)V�lՄ`>\�l>[\�vG����_w�?\�k�eW\��#j�^d\��\�}�\��\�xO:P�\"\n���\�\�\�[k�\�B f\ZgzV�x�G\�+C
\�\���{>\�q$�`�B����\��TR�r\�wxD��܀�T:\��:^;\\\�*�T5\�=���(
�$O\�\�)j�� \�c\�\�\Z�6rvu�,J\�M���\\��iR��\�h�!Jç�/?q\�\�\�Ƅ@e\�[K|s;���В\�R��\��\�\�H6x��)s\�\�3\�4ǫ\�D\�f���PK\0\0\0\0\0\0 \0E\�\�\r�\0\0i\0\0\0\0\0word/fontTable.xml���n\�0�\�{\nA\�Ʋ���Q�\�0\�e��\�Ό\"\�\�D\�\�zy�1N\�KR�)f\�\0E�?>���bP/.��\�\�rf�r\�\�\�\�m�=���g�]�w��z\\~z\�bf%\�k��\�r\�\�`\�9�Q\�l���,Ӷ@H��\�\���\� �wEe̝>ʤ\��P\�z뾒\�\�<\�\�Q�ȝ\���6�Gm��\�Y\�,g\�p\�C\�\�U���	����\�<�\��&)/͔a\�\nm�})�:�w\"��G\�\�XG@)>{t�~�Q�$�85\��])=/\Zm*�;skf.o%\�\\�F\�Ab�_͡\���;UӤ;m\�>\�\�T߸��\�;\�\�n\�q5�\�T\n��\�W0��\�cHO\�Cx�\�\�\'�q�K<z\�!�����a�\"\�=����k\�j�k�\�\�B���\�8V\�\��\n�k\�\�1\�\�?PK\0\0\0\0\0\0 \0��*é\0\0�\0\0\0\0\0word/numbering.xml\�XKn\�0\�\�\��>v\�@��\r\\�H�q\�5E\�6~��\�e{�\�=@\�+t\��\�\�q�E+�+�3\�\�̛�I\�\'gw�;Ն)9E���*���\\Nѧ�lt�c��1W�Nц\Z䜝�:Y�2\�\�\0�4\�:!S��6	]א\�F�2ja��Z,�\�Z\�\�\r<\�+��5x\�b�a�/\�ğl*��
���\�KW`}�&#`O�e\�\�n�\�;�i\��Z�Ũ)(��eA\�R#\�>yKȅ\"��\�]M9Ԡ�Y���\�R6p�j�l��LpԌ��\����\�kXZ\�}ʏK�\�e\�}o��\�\rb��s֕\�d��E�\�6wٯ�\�J���\�c���\rW�\�|W5��4ӯ��Nh\�\�\�\�M9���K�4�8H��9�G\�Ft\nG��՘\�\�T8[�\�x��\"D�ܲ+�Q>\�$�2̡�M�Y�!\�\�܇\�<֊k\�+fl�\� \0��f�3n&l\�\"\�Du\�\�5�\���\�&N�4\'u�ʭֆ/�\�yy�\�2�3\�)��Ya�,N\�6�`w�\�\�%�×_\�x�&×p8|	G×\�z���(�ݺ,��I�7i~\�sz\�^��\��&\�Z\�ot\�N�\"��\�����o\�n\�j�)iM\�%C��}�\��\��)\�\�\�ܷQl\�a������̤{L)\�9�������?�\'�4\�9�q\�)��\�\�\�f#\"\�;�{�]\�\�#k�\�������\�a�\��q\�x l\�8\�\�\�\�Ο+��PK\0\0\0\0\0\0 \0`�ۧ
\0\0�|\0\0\0\0\0word/styles.xml�]]w�:}�_�\�\�\�C�\�|��\�զ\�4\�in�\�}�A�5\�\0�\���\�8�\�Q8\�Kk\�\�l!��\���Ǐ(\��\�42��~;x<\�e \�\�\�\�\�\�Ǔˁ�\�,X(c~3\�\�l\��\�\��o��|\�\�S\�\�:\�o�<O��\�\�_\�e�Ʉ\�j\�B�\�\�\�t9�X��NN|%,s�|;����0)&�\\,�\�\�K\�8\�\�S��2\�V\"\�v\�6�h�I*}�eꤣ��1\�Ì��@�\�S�\�E��:��E:�:|t�?E\����\�e,S6U\�@�7�\�\�\�
�\���>�\�\�\��\�\�\�\\�\�\�f\�$\"\�\�|\�}�Sm\�\\�\�\�Y�β�m&\�\�`&�\�Zo\�&tX0=\�4V���P	�ܔ�\�m�\�\�f/��,^\�\��d9?���:\�5\�\\��,=\�Xq\�:\�\�\�3O^~+�ۈ@nnU_�2ܑ�Va�*L��a�{�0�Lf�Z\�^����3f�\�Q+7~�{L�L�\"oWW\�\��\�\'<�\��\�+\�xp\��\�G��j�/ױ�<�\�Kf��>O\n���1�\�Cq@X���<kqhM���\�;\�꺵��8+��7��h�ƭq�BL���\�q\�?\�y��C\\\�q\��\"�F�A\�DLA\��8  \�D\\�\�\�\�Z\�\�	tDc܁G4�xDcT�G4xDc̀G4�xDcD�G4�\�\�ڽ;u�\�܀[H�\�2\�^\��p,V(�\�@\�b�\��4J}V߀\��\�\�3�3\�E^\�Ʌ�\�u�R\�n(��\�P�o
�DAS��\�\��)_\�T%�w	0\�P\�܋\�\�\�\�\�	[\"P<\�\�\�a�컞�\�Uq儱�#�\�]\�a\�܋\�Ԧb�\�n�D=@]�Q�EL��\�\r0M\'�\�R\��U8�al_ٓp�*ؾ\n ��\�\�$\�Y\�g~|\�\�,ۙX\�LY�i\�Uw\�#K\�2e\�\�+n\�\Zm5Dx\'��\�d�{<�\�N.n�D�65� \�`���G�R\�#Mb��L�0\�O\��6[\�s�pF��3cẜL�P7��
�Q�Ⲷ`�n\�t\�	4\�CdS�\�$��:E���\�ȡ�y��ɧm\�S5?0e\�\r0\�Y�J\�w��\�\�~��%+��&\�iy�ڙ\��%\�c\�D\�\�����\�\�x䧧\�\�ޓL���h&}\'\�\\Ft�m�\�o>�\��Jd\�-\��L35\�V�w���QӇ�\�%\Z�\'\�\�%K\���E-���\����rj�l�\0��a�(\�K��=�Zҝ�\��\�I�\�2\�/\�\\\�\�z\�1��#�ɼ��&\�\�g��I\�\�F\�#���S߆,˄�\�\�!a\�\�nJ*�e�X�����\�p\��_#Q\�\Z�gGu�F\ZSh��w*\�\�h|.\Z����g�a\�S0U\�j0Sy�3\�\�Jh5\�oH�\0\�;k0�\�4\�7\r��M\�\�~��\��b�\�\Z3�j`�k`\�P�s%2e\���S\�\��\�E\�[��Y����\�}	�;@�8�p\n˘k3�\"K0<)0q=\���	\n��\�)MP��\�W2Tw�ek-YT\�0K�/I~ϛ\�{�\\\�\�lUލAd\��>_�A`\��S����\�yǽ�\�?\�h\�5��+\�\'=)\�0\�\��\�\�\�?\�\��\�WƯ20�E���\�_\��?�\�[�\�{�>\�ׅ\�\�\�\�X{���{\n\�)X\�}|�I\\X�\�#�T\�\�~Q\�@贇�Z�\�0T
�\�\�j�\�\�b-��y���\�~\�\�E�\�\�_ެ\��\0ذIG`s��\�2�\�\�㞏�ܩ�:θ�c�\�,U\�w׸\�\�gA\�o� \�7Z�~Nē\��-��͒D��K
\"�y�̛�y�B6o\"�\�\�M\�\�(D�nV,�h\�ADc\�\�\�c,���7LBg\�.\Z\�Fј7��Ƽ7�\�`!0o
�y#�\�\��Ec\�\"\Z\�Fј7��ƼD4\�\�\Z�\'�3o�y#�h\�ADc\�\�_b\�\�F���7��̼\\4\� �1o�y#�h\�ADc\���\�\r�Й7��ƼD4\� �1\�_b\�\�F���7��̼\\4\� �1o�y#�h\�ADc\���\�\r�Й7��ƼD4\� �1\�\�_b\�\�F���7��̼\\4\� �1o�y#�h\�ADc\���\�\r�Й7��ƼD4\� �\��\�X\�+Q#��\Z\�\�`\�}{�<���W�!\�IO\�\�Z0\�|�흔\�\�%\�I�@\�Tb\n��\�6b�k�r�7\�\�q�?qR�)��U���Z�\�z|���\���Ǉ��S\�\�\\�ߧO�g\�z|8��ZO\�\�\�v�@�4���.j#,�u\�P#A\�\�:S��G�\�:?��G�\�:+��?\�\�8\�s�\�\�\��<ֆQ㹰\�6��j\�O1\���O/[\�\��Oe\�Ɉ$nAH�u
BB\�#L�D\��\�ۂ�D\�:\�\�dĢGҊAH(z\�TO\"z�\�]�.<t��ɈE� �=��P\��D\�\�#xHD�Kw<�\����G�qkM\"z�\�<$�G\�Љ&#=��V\�BB\�\�\�m\Z\�#xHD�\�!=��N\�0�\����GZ�^�Z\�\�X#qq\�Z
\�\"q��w��\�\�;�9\�8�\�k<Nk�Mպ�9\�\�\�\�Xױ˚c]\�.k�\re��9�J\�eͱU\�.k�ݢwQsl�k\�vYsl���c�\�]\���wQs4�\�Eͱ[\�.j�m�wQsl�\�\�\�eͱS\�.j�Fѻ�9\ZE\�\�\�-z5\�6ѻ�9��\�EͱM\��$qwYs4�\�E\�\�(z5\�nѻ�9��\�EͱM\�.j�m�wQs\�����Q\�.j�Fѻ�9v�\�EͱM\�.j�m�wQsl���c�\�]\���wQs4��W\�q�9Zz�h�^2V\�\�m��\��\�u�[5MP��S<x[[4׫\0�\�\�gU=��??\�\�2:�W�Сm蛄�54�s�N�K�C�\�\�{\�bI�\�\�jaӬ�{\�\n0/jP\r\Z���E\�S�\ZRuN<yP�\�Y�6p��x-\�u�\�d\�\�ʨ�kɾME�\�h��\��{�Fl��<�\�\�\�L�XvR�=\����\�\�\��RL^{)Ɲ�b��#̥h\�\�h\�֏��\��\�\�\�\�\���� &��� \�@�/�=Pn\�\�3s�+\�*�X\\�\�\�V\�\r:�\�2�\�㽈[\�ՎX\�L��ԗ.98\�sU-y0\�xd�zS>\�\�R�S~��w,f\�\'\���e\�!�Mw#\�\�@m\�T^]�m\��\�\�\�\�0�\�JF�tCC�\�˽�\�˖�\�rq�\�\�S�\�t7f�\�\�5\�}\�\��PK\0\0\0\0\0\0 \0ߺQv#\0\0\�\0\0\Z\0\0\0word/stylesWithEffects.xml�]Mw\�8�\�\�\�i\�\��%���3/q��\�:N&rv\�	IX����8�~A��(�D7�F.�E�@�Ph�$\�\�?~$q\�\�\�B\�\�z0�\�x\�4��H׃\��.AQ�4b�L�\�\���\��7��}}U�\�1/ -�\�Yx=X�ev5\�\'��-a.
9/
e2�\��p-\�h8>뿲\\��(\�\rK���]�K�Ɍ�\�\�\\\�	+\�\�|1LX��ʎT\�b&bQ>�\�\�g�0\�z�\�ӫ&\�ѶA\�%Wu��_�+ro}\�{����q�\�X�A�\�Rd�\�xm4ur�	\�d���$l�`t\�6\�s�V�v1͏ꋒ�n�9\�\�1\"U�\��&\�snZ�0�\�_\�5\�\�]�\�ퟹ\\e�h\�-\�m���UMK�X\��o�pk\�t\�2�\�\�S�h\�ms�\�\�v�ʜ\�buKjȂJҁ�8x��&�\�{>g��,���׼yټҿ>ʴ,�\�+B���A$ʢ\��:�&�䰾Z�M�\�3�\�\�B�\��T$ӕ>�\�a\�\�\�\�T�b��\��P\�ss`|�9rS�<�t�9\�ӣ\�l��\�\�(\�\�3�f���`Յ\�\��/\�<{�����\\ߨ�\�e�!;n\�dM�\��Ã\�Un�\�hZ{�:\�\�w2|\�ѴT\'�`\��\�_s!se�׃\�\�\�\��\'Ⓢ\"���\�RD�\�%O�<\��룞\�́P�R\�\�\�|��<.�?B�UƪΦ,Q\�\�\�q�.^\�Į5\��.\��m(�q\�dYrV-��$��!\ZwƵ\n1qq\�\�\�=ę{�s\�\�!._B����1����q\n\"\�@\�9��\0�D)\�z��;|]q0\��+�x\����8�D\� s�\�`��W\�\���	`���\�\�V\ruZ\Zps)\�T�<(���\n�\�rYMX��F@�\�f\�p!ӯ�\�\�e� r\�\�b�� �~(O�x�2\�E�B��9/U��\���\�y�9n0\�X�<HW\�\�\�\�[ P<�\�\�\�`�l���\�e5r\�\��	S��q�0�b\�DajSu:x��c�\�.\�(ӊ��EL\����\���Mip`�\Zذ ��\�I�}\rl_�\�\�\�L\�{e\���u\�\�Ĳ0\�v*)SVb�v\�G\�\�l��lTp m5Dx\'�\�\��<k�xeѝ\\=8�tej���	\na���E�\�\�Y�~e���\�m���8\�܄3e\�^L�P���(\�1�\�\�\�Z>�漋l\n�C�\�R�Ȑ\r\�9V\�\�4�\��\�\\-��\�G\�r\�#vZ沪��\Z�\�\�!ɖ�L\�hy�m\�e\�ט�\�\�G	q�\�\�O�\� �UiG\�L�N��L\�&\��\�\�|\�/(\�[�Ȥ\� \�[0\�԰a�\�5FF F-\"��h\��\�L�<�p_U���Pr;eI\�#�f\�Z	\�\�\Z���*���\����\�b5�/MR���a~Y�:/\�ˎi�\�M\� 4��S5M��6R\�M\�{@��&fE!B\�	�o�xvS2\� e,\��*\�4tE�tE4Uƫ$-p�\Z��\�H<;��4ҘBk䟹���a\�h|#\Z߅�!o�T�k�L\�\�T��a�M�`p�!-|\�l�\�~\�0�\�4\�7\r��m\�>\�\�2k\�$j�\�>l�1S)-y�ɜ\�\� �C\�̘z׸���W\�ʔŰ9�g�\�\�@�T��W�p���6S)�3�ݔ\�Ӟ���\�K��\����|)c\�dX�֒Eeӌ��\�;>4މŲ�\��i\";\�I\���:\r�\�\�\n5\�g=\�B� �H��M\� ޮ<�8R�a��WR4+ �\�%>��g��\�d`�s���\�_�ğ�\��\�=\�q\�\�\�z\�nsT�=�[\�\�-\��\'\�6>\�$έg\�}�g���b t\�\�,�j�\�\�\\\�k�\�\�D֦��?�*\�ޢ\��\0ذIO`s��V��\�\�cǏ�ܪ�:-x�c�8�*\�\�;�1v[�,�\�V@
\"��Ђ\�\�k\"�\�}q�\�r[%-�ܖK
\"�u����u�B�n\"�\�\�M\�\�(Dn+D4\� �1o\�\�1D\�\�\r�Й7��ƼD4\� �1o\�\�-�y#X\��Bf\�.2\�Fpј7��ƼD4\� �1o�y{�F\�I\�\��Ec\�\"\Z\�Fј\�\�/1o
�y#X\�\��Ef\�.\Z\�Fј7��ƼD4\� �1o��y\�$t\�\�1o�y#�h\��\���7����,d\�\�\"3o�y#�h\�ADc\�\"\Z\�Fј7�\�ݼa:\�Fpј7��ƼD4\�}\�K\��B`\�2\�Fp��7��ƼD4\� �1o�y#�h\�A\�n\�0	�y#�h\�ADc\�\"koh>��JԈ\�S\r�\�`�~{���oۯtC�G\�\�Z0:~�흔�\�K�����\�,R\�\�� �\�s\�_n�ߍ|y�_�4ߔӟU�߾?��\�\��\�;L\'\�Ӻ.��X\�\�v|�9�\�zuoǇS\�\�E]�\�\�+*\r�)���\�Kb�3�H2�\�Z\�*�\�Z\�\"�\�\nZ\�O�*E\09N]F�l��4�\�\�0Z<\�<\�\�q�Z���\�\�k�\�c
\'A[\�+OF$q
B\Z�[�a�$�\�m\�<$�G\�Љ&#=��V\�BB\�#�z\�#xHD\�;u�\�=LF,z!�\����G$�$�G\��C\"�_��\�ɈE� �=��P\�Gk\�#xHD�\�!=��N\�0�\����G��nӈ�C\"z�\�<t��ɈE� �=�\�Z\��\�\"\�5\���\�\�Vx�{+��ԥ\�[ͱ\�\�\�\�\�\�Zs<T�Ϛc[�>k�m��9�\�\�x�l�5\�N���9vj\�gͱ_\�>j�]�\�m\�>k�]�\�Qs\�����Q\�>j�F\���9\��\�GͱK\�>j�]�\�����9\��\�G\�\�(z5G�\�}\��E\�\�\�%z5\�.\���9v���$\�>k�F\���9\ZE\�\�\�/z5\�.\���9v�\�GͱK\�>j���\�Qs4�\�G\�\�(z5\�~\���9v�\�GͱK\�>j�]�\�Qs\�����Q\�>j�F\�;\��뽭7�荖�|\�x�\�U�\�U�n�����\�u�\�V\�V\�\r�\r@��3\�]5�\�\�?\�\�\rdt|>nZ�C\�\�\�\�\�<\��1u\�_\�\r�n�>�V[�n66-\��7�\0�j�ՠq��Q6/y���\�\�\�\�U$�Bֻ\r\�=\�\�Z�\�ԙb�\��w/ٷ���mv�ݾ�\���_ԷV��)\�\�ݦ��\����7���\r���C1y\�P�{�b�\Z�f({u4\�\�\�V�;z`lꁓ\�\���� &��� \�@�/{�>\�\��\���Ua��H� ���\�l�ed++\�{�ͫ���n\�io]�s\�\r\�\�rg�5p\�(\��r׽��\�N�M�߱4���<\�ߖy�P6ݏ�M#up\�xu}�\��=\�\��3�e\�����ώ�/:\�\�\�\�yz�\�u>\�`�ߘ\�#vc���x\�PK\0\0\0\0\0\0 \0\�e�ʘ\0\0É\0\0\0\0word/document.xml\�]ks\�F����b\"�]�R(\�2�P\�\�\�I�*�J���E\�J\r�!90�\�H\�\�\�\�@\����\"�D\�AB��\�t\�����\�\"G3R	\�Y|\�� ���g�M\���{v��\�,\�9g$>Xq��?�\�\�磌�uA�D\�L�\�e\ZL�,G\�\�\"���^Aӊ
>���\�|<�)9�\�*;��a\��O�\����\���\�\�ן\�K\�\�\�1�\n,\�i59.puU�]\�\�K�Мʅzv��y�ꊍ\�#�K@�\'#
\�}4��\�\�\�O\�:\r��x\\�\\a\�LLi�\�\�>Mݜ6�\�&Ĭ\��&O�\�o+<W� \� ~fT\��\�O�\���~\�\�\��\���\r�S��\�J5\�ʝ|�n�x]��F�\�i\�j�,]0\�,g�u\�ė�y?\�%Yiz���EK8E:��0^\�$W\")�!Mi��xp�<N³��,\�ۯ���\��?4\�p��c{\� Ѿv\�}��\�|\�|$\�߆�Tڋ\���\�X]\��\�\�\�I}�pu\�\"k��\�\�0}/\'cN�S����M�W\�\�\�[��\0<H\����E�`�LT\�a�@\nsB*D%*\�d*QBP\��tF�#l�\�4\�\�MY,I��@\�>\�N=~3A\�MFV��.H\�\�\�p\�\�EI:,|\�\�\\�Is,z�u\�(Zڃ\��\�\�\�=�r�0\�HJ
�I��1\�X\�e�᪺W�\�:\�:�U��5(\�\�io\0f\�Ӥ�SUo\��\��o\�%\��,d��,:\�_�\�\����ޜ�;w�jW�\�?�\�\'L+V\�9A3\\+Mr\�V�*�\�>�\�W5��5(.˜\�çlTgӢ\�%-��\�ڮ+�b\�f�Ow\� \nO�x\�lɵKΖ�1���\�\�A<N�W{��ʡ�朄\�$�\'����~鬓\nĸ�ҵD�.��`p��oy�T���\�C�\�t\�\��!�\�v0\��ðׇ
��\�Y貭a\�\���\��\�\�r�Ǉ\n�$�\�\�\\HT�T\�\�X\�pT\�R��Ů[�G�T�ヲ\"�T3rp�ЏT\�4W\�R5\�r!�$\� \�(�.�r\�\ne��S\�VY<\�\�M\�\"���N9\�U�F\n��͔$�p�Ƽ2��mK	\�.��k\�\�\�\��n�\� m�R�\�\�N?�=\�\�d�@�1�qh`������V��y�0�\�`\�j�pѵt\�pAb\�\�Z\�.���T�\�\�|�M�\�\�\�Eߏ�3xhό\0�\��\'\�)+�\�J��y�ٗ(d\���oz6M�-\�Z�p\�h��{�-���3�\�:�s}\�Yǹ d\0�G\�\�M*;\�Ö��}[\��\�\�\n\'�\�#Lv�\�.K²\�)ࢗ\�=X\�aSfFQ�:	\�0@���M� �\�D�뽽�\�ޯ}1y\�Ks�+\�\�͍\�{y\�{y\������\�ݞ�\�\�|�P\"~Q\�>\�\�a�l��\�\�\�\ra@+�d=\��f�\�\0��$\�\�\�p�T\��%@�\"\�qǗ8�/O�W�Y\�:����G9\���kip�^\�\�$J�\�\�j�P�|��:�{\�}\�Cm��u\�!) \�/\�)�\����r<i\�\�\ZKv�4%/!���/�=w�\��\��r\0�/\�`J��?ƀ#\�n��pJ\\xy\�\��\�\�\n-\\�-b�\�\"�{�W�G\�yUϲ�����\�`�w)sث�^q�\�9\�U8\�o\\ə�ĩ��\�\�\�\�G1N\�%�P�X�\'\�7�\�1d�\�ɱO��\� �\�\�\�\�xI�\�\�&H\�d\�0E�:� �y���\���8�\'\�\�W� \�\�){�OȪ�@����\�\��
\�\�W�ÓA8��Sp�6\�B��\�\'�l�5\�ʅ�r֬|g\�U\�+\"�\�R4tWS��	\�\�W �\�^򚻉�ehF\��\��2��\"�Ѷ�\�h�\�# \�ڿaX(�\�\�w�g	\�gL3$�\�\�L\�\�n4k\�\�璤z�K\�2E��=\�K\0\�e�㑅�\�Ǒr6\�/\r>\�-�\�%.\�w�\�=Hӑ�\�_@VK��O�2Ћ�9b�\n݉\��\�\�\��h-><\�\�U\�m�\��\�h�F4\\�Ea�\�9k��D �hil���\�\�\�%\�/��\'�q=\�ף\�\� \�`\�\�B�e�\�\�\��\�b\�
pO\�r*\�s\�ksjU#���T.x=x��{\�T\�]��}���K\�7\�\�J\�\�~|lί6\�\�\�\�l�?�\�,\�B۰,j�m\�m�����y�7\���\�&\��6��m�K\�=e_\�.p\�tv\0m��\�\�\�lT\�\����pq�to�В��M[g\�#\�\�b��9\�\�F\'� ��
\�s�;̷��b\�z&.fT@�.\�a\��٣\�-\�~<*t��:�\�ad �p`O\0�\�Q�\�2\�E\n]\�W\r�M�\�z{\�,[�P�\�+�\�Ox�\�8\�\�n\�gě\��+7h\rpo\�\�֣���[�@�E\�,n\�\"���@X��(��\�jbv�G�>�\�a@\�g\�Ѭ\�\�\�=բ\�x\�\� \�Î )ϸ�\�\�\�q\���vmu�\�9�؝�?=�\\\�3�&w\�d\\d�\�\�W\�\�\�1�sO\�\rm{@ﱟf \\e���g\��.]ܵs]�n�\�\ri�\�D�ӆ]\�lx:�W\';�6�����Mjٴh�.&*\�<<ēO$�h�\��\�7_o6\�\�B\�\nZ���x♉\�\�\�\�t}�ۦ\�5�|\��F\�jk\�9y���֍3wQ\�ʣ�+���\�]@��d\�*$h_H�n!\�\���.Ee�{�¯\"��d:�\�/zn��\��{�=�R\�bU`\�pb�F$�ɞ_�&\��Ĉ\�	��\�q3��Ȕ\��#}1\�vq�\�7ُ�R\�Ұ�2\0F��\�f	As\���&\�X1yԅ�5bka\n\�Էh���t[\�\�ul9\�s\�\�\�\\v�zA2�pm;�ҬW�\�\Z\�\�\�\�i�?=\�\�Vy�$[�(Mp�xI*\�\��\�\�Cc^��\�j��M뼐�W���W�\�èz\�}\�\���=�=�G�srv�a\�\�}\�\��]�ޞ\�\�==-J^I$iA`\�Lc\�kb��\�\�\�ـc�\���N\�n�\�\Zѱ��\rP�����[�n3�\�\�ua쉜��x\�\�[\�x\�\�OiW�]ﾬe\�V�\�1I*s
I��\�)I�H6��!/�O\���\�I\�͈qs\��ߩsn�zv\�\�\�6�4�\�\�\�ÔX#Q��\�)\�\�w\�J`�;\'� ;�|\�\�)�2\�M~L�\��\�6?\�iEؔP�\�	����v~Pe�\�Ũ\�Y�\�D/^_�\�N�VQ!�nC�uE\�\\6\'*#\�\��⍧\�9Q\�\�\0�GۡhSU\�\'\�,\�U��T.\�\��\�\�\�pq
U\�\�ÅG!o?�\�~2�{����<�̜>�\�w�\��\�K\�KQX�h�~�:\�\�K/+�4F\�0\�ml��\n�\� �\�ף��֧\�\�r\���<�,H+\�&�Q\�e;\�\�[Cd\�\�[\�E(���p��)G]\ZVE�Z\�;FK�/\�I\����{\�\�`A\�\���y9\�/\�~1\�\��+n�Org��N�\�\�\�\�ٰ0���\�\�\"�\�4j\Z�\��:S\\\�T9L1rS���n��\�P}�:\�\��	3.�*��k�J\�\\�8\�:�ħp��1><\��t_\���2ޔm�u���\'˨�\�g�\�=ݶ\\�u3j\�\�A2�=ݪ\�\�\�7�S9\�DIs�1��\�oM�b\n��~\�#\'7N}�y\Z�\rӢ<�L�\�a�`�����مtmڏԓj�\�V�K\�ے�ݕ\�ː�O��\� �y�\�p+\�\�E�KZ\�4Ű\�u}�\�\�\�|0b+�
\�>\����\�\�\�W֕2�{\�g\�ID\�y\�t\Z�<\r\�\�\���gbΗ(n\\6��xm\�˫\����4;\\�\�\�\�P\��\��{\� 6\�\0\�	�WY�\�ƙ�\�o_zt\�`!{ג	�\�sW|Es^ef��e6\�;0�j�+����\0\�%�eJ�2%>ʴ��\�\�,����8��\�\�4\�\�IN�^�r\�_(z�+��2\�}v\�Y,\�\�%tq2q��Hr�s3;Te\0�^D�aS�7\�c��\�[P�>g\�:8׫h\�\�\�T0��ESO\�\�:/_^\�f\�eH\�}eJ��2�ZYzT�B�9\�e\�\�?(��	{��u�\�B\�\�\\��\�,�>�.8\�;\�\�a䮦T.ܵ��x�3}\�\�\��L�\�#\r���\�W0\�\r\�mA�\nԘܒ\�z?^��Y\�xA�0vc8�R\����W\�%.Iu,R*�ހ\�2-\�\�j��N9MI\�m[��q!\��u\�	\�v),�k\n+k�\�5̊R\�\�܀J�\�M\�*<�(\�\��K\�o\�\�GK(yt����S\�\�H>�;�\�2NWhi��\�C\�\��e:�\\���m�5�]\Z+�a���`-\��h��+\�ۭ\��\0d\�;\� ���\�-y\�ێ\�s/�\�L�q\�g���_�\�Ô\�\r+t\�\�}K\���fj	%gB]\�m*$C��\�O0e��\�!�qQ\�v_\�\��<�۠k��,s\nwĘ/\�\��6����~�
�\"i)�4Kn�
\�}iL\\�Mc��\�\�:�N�(xm^���HSŎ-=Mg}�7\�\�良p\�\�\�3\�\�ȭ0=!q%e.�N�^��\�	eN\�\�\�-��\�:\'���~\�?��\�\�uELd6/x6!\�KHc\Z\�2-ЃD+\�}z�2\�\�w!�\�\'R�N��]{\�HȪ��@�ਗ\�\\\�.a=\�7Y�Xnb�2~�>5-z�[>`�t�qƱ�\�\��\�F\�\�O�\�\���\�\�J��\�)3�6�\�-�т\�\"
�*:�\�/\�^\�m�U�].RW\�\�{�� 	�J��~J\�\�(ЍJ�[\n&\Z�O�\�\�r�:\��.�=�Rv\�>P\0\�\�\�:\�^U���\�9\�q�^�X��i&_\�\�\�N�\�\�=�\�7��\�m��+\�Z)���$t�\�;\�[\�2D�����\�҉�\�` :$s\\d.�i�\0&F\�� /Zq.�[㊠�\"<\�/_\�\�\�\�<��A���9����\�O��`�\�pN�!`���,!\�!�
:�\�B\ZW[�͛\�\�\��\'\�\�j��lC\�UO��\�k0\�<��ݲ�l�Jsɼ�˒��c�� ��\�6�.\��\�\�匡�d]Ͷ	P {IjW9R�\�dX\��2\n^ g�+�^N�g�nX\'�`a\�R�\�\Zn��+u>�a�\Z0ȫX\�eN:.ud
��n�\�ݶ�n\�\��|.���VvA\�g���j�k�#0\�\��o��\�\�d��\�\�����\��Y\00l�A��߉\�\������\�{\�Ls%Nǵ�~}~\�q?��,�Z�ޗ?ʃ?\�\�\�0\'\07��w=$\�=�:\�+\�{М\�\�N\�kzo�o4\�\�\�\�\n|\Z�\�\�:
�A7�@�cΌ�(\�D��W�U����2�\�\���\�~C�: E�@�\��@\�U�\�\�?�\�\�\�{�7\�U��u 1\�\�K4�
z\"\��a\��WZ��\�.b\�\�Z�\Z:�x\�0�\�\0��)\�\n5
9\��\�<GB\�f-�Ч\�x�\�j�,
�\�ae�?�
\�ph�1���
��	|��ß����Ym\��&eX�6\�= �E�T��ݮ\�k\�s�3R��	�b�ʔ*&d�T\'�Ds�R\�Є\�\�hER�/`jԈ�f\�\�|��Ӝ�����\\\�n.\Zxޚ��g(^�ڻXßd�\�\�x�`A2�r�pU\��?�R�
\�WW�FF\�cR��\�H��xb\�z	4�Yma�ήr3%\�W�%\�.�\�\�}�$Z�
0\�CE\�^\�\�L\�\�ho���l�>:\�c�B��\�F4wj;hNJ��\�Y��?T5T\�\�\�\�<=8�6��5\�R\��8�x\�p\�p\�p\�\0u��\�]{\�\�?i\�B\�\��\0{8ߞk{r=Aﲇ��<\�\�y��z�\�\��\�ƝǇ#H*\�3ƜK\�%�g%_��\�\�\\J^\�G�����\�݌����\�\�{\�{\�\����E\����3IY\�kᠵ�;a\�V(O߱l��\�I\�/^`\��HZ�\�\�w�\��\n\�\�V�T=|xv\�?P\�suE\�\�}៸RWs2�\�Ɖ��\�\�\�Ĭֻ:M��ݹ}�\�k\�}���cZ	\�]\�E3�\�c\�\�w\�O��\����\�O�\��m�To\�\�N([*�\��\�\�\�\�\�\�\r��\Z\�k\�\�\�(�\�a\���PK\0\0\0\0\0\0\0\0 \0\�\�=\�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK\0\0\0\0\0\0\0\0 \0(K-\�\0\0\0N\0\0
\0\0\0\0\0\0\0\0\0\0\0\0\0\0_rels/.relsPK\0\0\0\0\0\0\0\0 \0W�^P\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0docProps/core.xmlPK\0\0\0\0\0\0\0\0 \0�tF��\0\0\0&\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0docProps/app.xmlPK\0\0\0\0\0\0\0\0 \0��6\�\0\0>\0\0\0\0\0\0\0\0\0\0\0\0\0\0t\0\0word/_rels/document.xml.relsPK\0\0\0\0\0\0\0\0 \0ȝ-\�\�\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0word/webSettings.xmlPK\0\0\0\0\0\0\0\0 \0b\��\0\0\�
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\� \0\0word/settings.xmlPK\0\0\0\0\0\0\0\0 \00^�z�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0word/theme/theme1.xmlPK\0\0\0\0\0\0\0\0 \0E\�\�\r�\0\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0word/fontTable.xmlPK\0\0\0\0\0\0\0\0 \0��*é\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0word/numbering.xmlPK\0\0\0\0\0\0\0\0 \0`�ۧ
\0\0�|\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0word/styles.xmlPK\0\0\0\0\0\0\0\0 \0ߺQv#\0\0\�\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0S!\0\0word/stylesWithEffects.xmlPK\0\0\0\0\0\0\0\0 \0\�e�ʘ\0\0É\0\0\0\0\0\0\0\0\0\0\0\0\0�-\0\0word/document.xmlPK\0\0\0\0\r\0\r\0I\0\0uC\0\0\0\0','NOT UPDATED');
/*!40000 ALTER TABLE `usernotification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28 16:50:26
