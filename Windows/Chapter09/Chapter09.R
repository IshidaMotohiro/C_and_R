
# ������  2014�N12��09cd ��


############################################################
#         ��9�̓t�@�C���ƃf�[�^�x�[�X         #
############################################################






  ## ----- SECTION 122
# �R�l�N�V�������쐬
con <- file (description = "test.txt", open = "wt")
isOpen (con, rw = "wt")
cat ("�t�@�C�����쐬\n", file = con)
# �R�l�N�V���������
close (con)
# �t�@�C�����m�F����
file.show ("test.txt")
# �t�@�C�����폜
unlink ("test.txt")

# R News ����M
con <- url ("http://cran.md.tsukuba.ac.jp/src/base/NEWS")
# �s��`�̕�����Ȃ̂ŁureadLines�v�֐��𗘗p
NEWS <- readLines(con)
close (con)
# �����e�L�X�g�Ȃ̂Ŗ`�������m�F
head (NEWS)
rm (NEWS)




  ## ----- SECTION 123 �e�L�X�g�t�@�C���̃f�[�^��ǂݍ���
# �ȉ��̃J���}��؂�̃t�@�C���udata.csv�v���������Ƃ���
file.show ("data.csv")
## Id,Name,Sex,Grade
## 1,�R�c,�j,60
## 2,����,�j,70
## 3,����,��,80
## 4,���,�j,85
## 5,�R��,��,90


# �R�l�N�V�������쐬
con <- file (description = "data.csv", open = "wt")
isOpen (con, rw = "wt")
cat ("Id,Name,Sex,Grade\n1,�R�c,�j,60\n2,����,�j,70\n3,����,��,80\n4,���,�j,85\n5,�R��,��,90\n", file = con)
# �R�l�N�V���������
close (con)
# �t�@�C�����m�F����
file.show ("data.csv")


# �e�L�X�g�t�@�C����ǂݍ��ޔėp�I�Ȋ֐�
# �t�@�C�����i����уp�X�j�Ɨ񖼂̗L���A��̋�؂���w�肷��
(x <- read.table (file = "data.csv", header = TRUE, sep = ","))


# �J���}��؂�t�@�C���ł���΁uread.csv�v�֐��̕����ȒP�ł���
(x <- read.csv ("data.csv"))

unique (count.fields("data.csv", sep = ","))

unlink ("data.csv")

# �ȉ��̃J���}��؂�̃t�@�C���udata2.csv�v���������Ƃ���
# �R�l�N�V�������쐬
con <- file (description = "data2.csv", open = "wt")
isOpen (con, rw = "wt")
cat ("2013�N01�N01������\n�L�^��,�Γc��L\n\n1,'�R�c','�j',60\n2,'����','�j',70\n3,'����','��',80\n4,'���','�j',85\n5,'�R��','��',90\n", file = con)
   # �R�l�N�V���������
close (con)

# ���̃f�[�^�ł͍ŏ���2�s�C�L�^�҂̃R�����g������A��s�������4�s�ڂ��炪�f�[�^
# ���̏ꍇ�w�b�_�i�񖼁j���Ȃ��A�܂������̈��p�����V���O���N�I�[�g�ɂȂ��Ă���
file.show ("data2.csv")
# �w�b�_�╶����؂�Ȃǂ𖾎��I�Ɏw�肷��
(x2 <- read.csv ("data2.csv", skip = 3, header = FALSE, quote = "'" ))

unlink ("data2.csv")


# �ϐ������w�肷��
x2.name <- c ("ID","NAME","SEX","GRADE")
(x2 <- read.csv ("data2.csv", skip = 3, header = FALSE, quote = "'",
                 col.names = x2.name ))

# �ȉ��̃^�u��؂�̃t�@�C���udata.tsv�v���������Ƃ���
# �R�l�N�V�������쐬
con <- file (description = "data.tsv", open = "wt")
isOpen (con, rw = "wt")
cat ("Id\tName\tSex\tGrade\n1\t�R�c\t�j\t60\n2\t����\t�j\t70\n3\t����\t��\t80\n4\t���\t�j\t85\n5\t�R��\t��\t90\n", file = con)
# �R�l�N�V���������
close (con)

file.show ("data.tsv")

# ���̏ꍇ�́uread.delim�v�֐����g���΂悢
(x3 <- read.delim ("data.tsv"))

unlink ("data.tsv")


# �R�l�N�V�������쐬
con <- file (description = "raw.txt", open = "wt")
isOpen (con, rw = "wt")
cat ("����̓e�L�X�g�t�@�C���ł�\n1 2 3 4 5\n", file = con)
# �R�l�N�V���������
close (con)

file.show ("raw.txt")

(x <- readLines ("raw.txt"))
length (x)

(y <- unlist (strsplit (x [2], " ")))

(z <- as.numeric (y))




  ## ----- SECTION 124 �e�L�X�g�t�@�C���փf�[�^����������
# �^�u��؂�̃t�@�C���udata.tsv�v�̓ǂݍ��݁i�O���Q�Ɓj
file.show ("data.tsv")
## Id Name Sex Grade
## 1 �R�c �j 60
## 2 ���� �j 70
## 3 ���� �� 80
## 4 ��� �j 85
## 5 �R�� �� 90

(x3 <- read.delim ("data.tsv"))

# �^�u��؂�t�@�C������ǂݍ��񂾃f�[�^�t���[�����J���}��؂�ŕۑ�����
write.table (x3, file = "saved.csv", sep = ",")

# �쐬���ꂽ�t�@�C�����m�F����
file.show ("saved.csv")

# �s�ԍ��̗񂪍��ɒǉ�����Ă��鑼�C������Ɉ��p����������Ă���̂ł������폜����
write.csv (x3, file = "saved.csv", quote = FALSE, row.names = FALSE)
file.show ("saved.csv")





  ## ----- SECTION 125 �G�N�Z���`���Ńf�[�^��ǂݍ��݁^�������݂���

# �p�b�P�[�W�̃C���X�g�[��
install.packages("XLConnect")

library(XLConnect)

# �{���t�^�t�@�C����ǂݍ���
dat1 <- readWorksheetFromFile("XLConnect.xlsx", sheet = 1)
head (dat1)

# �t�@�C���𒼐ڑ��삷��
wb <- loadWorkbook("XLConnect.xlsx")
dat2 <- readWorksheet(wb, sheet = 1)

# �ʏ�̃f�[�^�t���[���Ɠ������삪�ł���
dat2[1, 1]
[1]  21
# �f�[�^��ύX
dat2[1, 1] <- 888
# �ύX���t�@�C���ɔ��f
saveWorkbook(wb)




# �f�[�^�x�[�X���ɃG�N�Z���E�t�@�C���ɃA�N�Z�X
install.packages ("RODBC")
library (RODBC)
getwd ()

# �G�N�Z���E�t�@�C���ɃR�l�N�V�������J��
con <- odbcConnectExcel ("Book1.xls", readOnly= FALSE)
# �t�@�C���̊T�v��\��
sqlTables (con)
# �f�[�^�x�[�X����f�[�^�t���[�����쐬
(x <- sqlQuery (con, "select * from [Sheet1$]"))

is.data.frame(x)

# �f�[�^�x�[�X���ɒ��o���\
 sqlQuery (con, 'select Grade from [Sheet1$] where Grade > 70')

 sqlQuery (con, "update [Sheet1$] set Sex = 'F' where Sex = '��'")

# �G�N�Z���E�t�@�C���Ƃ̃R�l�N�V������؂�
odbcClose (con)

# install.packages ("rJava")
# install.packages ("XLConnect", dep = TRUE)

library (XLConnect)
wb <- loadWorkbook ("XLConnect.xlsx", create = TRUE)
createSheet (wb, name = "mtcars")
createName (wb, name = "name.mtcars", formula = "mtcars!$C$5", overwrite = TRUE)
writeNamedRegion (wb, mtcars, name = "name.mtcars")
saveWorkbook (wb)
mtcar2 <- readWorksheet(wb, "mtcars") # ���[�N�V�[�g�̓ǂݍ���
remove(wb)                                                        #  �����̏I��



  ## ----- SECTION 126   �f�[�^�x�[�X�𑀍삷��
library (RSQLite)

drv <- dbDriver ( "SQLite")
# sqlite3.exe �ƃf�[�^�x�[�X�t�@�C���utest.db�v
# �̂���t�H���_���umyDB�v�Ƃ���
setwd ("C:/myDB")
# �f�[�^�x�[�X�ɃA�N�Z�X
con <- dbConnect (drv, dbname = "test.db")
# �e�[�u����\��
dbReadTable (con, "test")


# �uiris�v�f�[�^�t���[�����f�[�^�x�[�X�ɓo�^
dbWriteTable (con, value = iris, name = "iris" )
# [1] TRUE
# �o�^���ꂽ�f�[�^���m�F
dbReadTable (con, "iris")


  # 2014 �N12������ �f�[�^�t���[���Ɋ܂܂��h�b�g�̓A���_�[�X�R�A�ɕϊ����ꂸ�A
  # ���̂܂ܕϐ����Ɏc�����悤�ɂȂ��Ă��܂��B���̂��ߋL�ڂ̃R�[�h�͓����܂���
   #  # �����𒊏o���Ă݂�
   # dbGetQuery (con, "select * from iris where Petal_Width > 2")

# �����𒊏o���Ă݂�(�C����)
dbGetQuery (con, 'select * from iris where "Petal.Width" > 2')

   # # �uPetal_Width�v�t�B�[���h�̕��ς����߂�
   # #  dbGetQuery (con, "select avg (Petal_Width) from iris")

# �uPetal_Width�v�t�B�[���h�̕��ς����߂�(�C����)
dbGetQuery (con, 'select avg ("Petal.Width") from iris')

# �f�[�^�x�[�X�Ƃ̐ڑ���؂�
dbDisconnect (con)




  ## ----- SECTION 127  �����R�[�h���w�肵�ăt�@�C����ǂݍ���
# UTF-8�ō쐬���ꂽ�t�@�C����Windows��R�œǂݍ���
x <- read.table ("utf8.csv", sep = ",", header = TRUE,
                 fileEncoding = "UTF8")
# ���p�ł��镶���R�[�h���m�F����
iconvlist ()






  ## ----- SECTION 128  �C���^�[�l�b�g��̃t�@�C����ǂݍ���
# �l�b�g���[�N�E�A�h���X���w�肵�ăt�@�C�����擾
(x <- read.csv ("http://192.168.0.2/~ishida/url.csv"))

# �t�@�C�����_�E�����[�h�������ꍇ
download.file ("http://192.168.0.2/~ishida/url.csv",
                destfile = "url.csv")





  ## ----- SECTION 129  �I�u�W�F�N�g��ۑ�����^�ǂݍ���
x <- LETTERS [1:5]
y <- data.frame (x = letters [1:5], y = 1:5)
# �I�u�W�F�N�g�ux�v�Ɓuy�v���o�C�i���`���ŕۑ�
save (x, y, file = "xy.RData")
# �I�u�W�F�N�g���폜
rm (x,y)
x;y 

# �I�u�W�F�N�g�̓ǂݍ���
load ("xy.RData")
x; y

(z <- month.name) # R�g�ݍ��݂̌����̃f�[�^

# ���[�N�X�y�[�X�̃I�u�W�F�N�g��ۑ�
save.image ()
# ���[�N�X�y�[�X�̃I�u�W�F�N�g�����ׂĔj��
rm (list = ls())
 
# �u.RData�v�̓ǂݍ���
load (".RData")
x; y; z

dput (x, file = "x.R")
file.show ("x.R")     # �t�@�C���̒��g
(x <- dget ("x.R")) # �I�u�W�F�N�g���Č�

  # �I�u�W�F�N�g�̍\�����e�L�X�g��
dump ("x", file = "x.R")
file.show ("x.R")     # �t�@�C���̒��g

source ("x.R")




  ## ----- SECTION 130 �t�@�C����f�B���N�g���𑀍삷��
# �t�@�C�����쐬
file.create ("hoge.txt")
# �t�@�C���̏����m�F
file.info ("hoge.txt")

# �t�@�C�������݂��邩
file.exists ("hoge.txt")

# �t�@�C�����̕ύX
file.rename ("hoge.txt", "foo.txt")

# �t�@�C�����폜
file.remove ("foo.txt")

# (x <- unlink ("foo.txt") ) ���\

# �t�H���_���쐬
dir.create ("tmp")
file.create ("tmp/hoge.txt")

# �p�X�̒Ԃ肩��t�@�C�����𒊏o
basename ("tmp/hoge.txt")

# �t�H���_���ƍ폜(�Ȃ̂Œ���)
# unlink ("tmp", recursive = TRUE)




  ## ----- SECTION 131  �ꎞ�I�ȃt�H���_��t�@�C�����쐬����
# �ꎞ�t�@�C�����쐬
tmp <- tempfile()
# �ucat�v�֐����g���ĕ���������
cat (file = tmp, "1 2 3 4 5 6 7 8 9", "1.1 .2 .3", sep = "\n")
# �ǂݍ���ł݂�
(x <- readLines (tmp))

# �X�y�[�X�Ő؂蕪���Đ��l�ɕϊ�����
as.numeric (unlist (strsplit (x, split = " " )))

# �ꎞ�t�@�C�����폜
unlink (tmp, recursive = TRUE)

# �ꎞ�t�H���_���쐬
td <- tempfile ()
dir.create (td) # �ꎞ�t�H���_���쐬

# �ȉ��R�̊֐��ňꎞ�t�H���_�Ƀt�@�C�����쐬
cat ("���͐^�ʖڂȊw���ł��B\n", file = paste (td, "D1", sep="/"))
write ("�ޏ��͐��w�Ȃ̗ǂ��w���ł��B", file = paste (td, "D2", sep="/"))
writeLines ("�ޏ��͓�����w���w��ł��܂��B", con = paste (td, "D3", sep="/"))

# ���ꂼ��̃t�@�C����ǂݍ���
scan (file = paste (td, "D1", sep="/"), what = character () )

readLines (paste (td, "D2", sep="/"))

# �ꎞ�t�H���_�𒆐g���ƍ폜
unlink (td, recursive = TRUE)
# �e�L�X�g�t�@�C�����U������
x <- textConnection ("1, 2, 3, 4, 5")
readLines (x)

readLines (x)


# �����ɒǉ�
pushBack (c ("6", "7"), con = x)

# �ǉ����ꂽ�v�f��
pushBackLength (x)

# 1���ǂ�
readLines (x, 1)

readLines (x, 1)

# �����܂œǂݍ��܂ꂽ
readLines (x, 1)

# ���l�Ƃ��ēǂ�
x <- textConnection ("10, 20, 30, 40, 50")
(y <- scan (x, sep = ","))


sum (y)

close (x)

# csv�t�@�C�����U������
z <- textConnection (c ("Id,Value", "A,1.1","B,2.1","C,3.1"))
 
(z1 <- read.csv (z) )

close (z)






  ## ----- SECTION 132 �L�[�{�[�h��N���b�v�{�[�h����f�[�^��ǂݍ���
# �ȉ��̓L�[�{�[�h������͂���
# Enter�L�[�œ��͏I��
x <- scan ()

x

# ���������͂���ꍇ
x <- scan (what = "")

x

# �����̃f�[�^�^����͂���ꍇ
x <- scan (what = list(A = "", B = integer(0), C = double(0)) )

x

# ���̂悤�ȃt�@�C��������Ƃ���
file.show ("scan.txt")

(y <- scan ("scan.txt") )

# ���̂悤�ȃt�@�C��������Ƃ���
file.show ("scan2.txt")

# 2��ڂ̕�����������ēǂݍ���
(y <- scan ("scan2.txt", what = list(a = 0, NULL, b = 0) ) )

# �s��ɕϊ�
(ab <- cbind(y$a, y$b))


# �ȉ��̂悤�ȓ��͂��\
x <- read.table (stdin(), header = TRUE)

x

# GUI�Ńf�[�^�����
fix (x)
# (y <- edit(x)) # �ł��ǂ�

# GUI�Ńt�@�C����I��
x <- read.csv (file.choose())
# �N���b�v�{�[�h����̓ǂݍ���
# Windows��Ubuntu
read.table("clipboard")
 # Mac
 # read.table (pipe ('pbpaste'))



# �X�N���v�g��R�[�h�ЂɁuscan�v�֐�������
cat ("�u���P�b�g�ŋ���")
{
    x <- scan()
}
x + 1





  ## ----- SECTION 133   R�̍�Ɠ��e���l�b�g���[�N�z���ɂ���肷��
# �ۑ����鑤�D�uSys.Date�v�֐��œ��t���g�����t�@�C�������쐬
(fileName <- paste (format (Sys.time (), "%Y-%m-%d-%H-%M"),
                    ".rda", sep = ""))

save.image (file = fileName )
# �������A�b�v���[�h��R�ōs���Ȃ��
# install.packages("RCurl")
# library (RCurl)
# ftpUpload (fileName, "ftp://192.168.0.1/~ishida/www/",
#             userpwd = "login:password")
# ��M���̏���
x <- load (url ("http://192.168.0.1/~ishida/2011-01-07-10-58.rda") )






  ## ----- SECTION 134 R�̃X�N���v�g�R�[�h��ǂݍ���
 file.show ("test.R")
## # �����Z��Ԃ�
## foo <- function(x,y) {
##       cat(x, " + ", y, " = ", x + y, "\n")
## } 
 source ("test.R")
 foo (1, 2)






  ## ----- SECTION 135  SPSS�Ȃǂō쐬�����t�@�C����ǂݍ���
 # �p�b�P�[�W���C���X�g�[��
 install.packages ("foreign")
 library (foreign)
 # SPSS�t�@�C����ǂݍ���
 read.spss ("file.sav", use.value.labels = FALSE)



