# ����  2014�N3��29��

############################################################
#                   ��4�̓x�N�g���̑���                    #
############################################################




  ## ----- SECTION 034 ������x�N�g�����쐬����

# ��̕�������쐬
x <- character (1)
x
# �uvector�v�֐����g������̕�����̍쐬
x1 <- vector ("character", 1)
x1
x2 <- "ABC"
x2

# ���p���̓V���O���R�[�e�[�V�����ł����܂�Ȃ�
y <- 'ABC'
y

# �_�u���R�[�e�[�V�����ƃX�y�[�X���܂ޕ�����u"A" "B" "C"�v��������
x <- '"A" "B" "C"'
x

#  �V���O���[�e�[�V�����ƃX�y�[�X���܂ޕ�����u'A' 'B' 'C'�v��������
x <- "'A' 'B' 'C'"
x

#  �G�X�P�[�v���g���ꍇ

x <- "\"A\" \"B\" \"C\""
x


# �v���b�g�̃L���v�V�����ȂǂɎg���ƃo�b�N�X���b�V���͕\������Ȃ�
cat (x, "\n")
"A" "B" "C"
plot (1:10, main = x)
length (x)

# 3�̕������v�f�Ƃ���x�N�g��
(y <- c ("A", "B", "C"))
cat (y, "\n")
length (y)

LETTERS

letters

month.name

month.abb

LETTERS [1:10]
noquote (x)






  ## ----- SECTION 035 ��������K���I�ɍ��������x�N�g�����쐬����
# �f�t�H���g�ł͊ԂɃX�y�[�X������
paste ("ID", 1:10)

# �usep�v�������w�肵�ăX�y�[�X���Ȃ�
paste ("ID", 1:10, sep = "")

# 1�̕�����i�v�f��1�̃x�N�g���j�ɂ܂Ƃ߂Ă��܂�
paste ("ID", 1:10, sep = "", collapse = ",")

FeMa <- c ("��", "�j")
FeMa

outer (FeMa, 1:5, paste, sep = "��")


# �x�N�g�����w�肷��ƁA����Ȃ������K�v�Ȃ����J��Ԃ��g����
paste (c ("F", "M"), 1:8, sep = "")





  ## ----- SECTION 036 ������I�u�W�F�N�g�̕������𐔂���

x <- ""
# �ux�v���󂩂ǂ������m���߂�
nzchar (x)
nchar (x)

y <- "R�t����"
# �f�t�H���g�ł͕�����
nchar (y)
# �utype�v�����Ńo�C�g�P��
nchar (y, type = "bytes")
# �utype�v�����ŕ\�����P��
nchar (y, type = "width")

# �v�f����������ꍇ�͂��ꂼ��̕��������Ԃ�
(z <- c (x, "ABC"))
nchar (z)
# �v�f�Ɍ����l�uNA�v���܂܂��ꍇ�ɂ͒���
z.na <- c (x, NA)
nchar (z.na)
is.na (z.na)





  ## ----- SECTION 037 �w��ʒu�̕�����𒊏o����
x <- "R�t����"
y <- "�n���h�u�b�N"

# 2�����ڂ���3�����ڂ𒊏o
substr (x, start = 2, stop = 3)

# 2�̕������ΏۂɁA���ꂼ��2��������5�����ځA4��������7�����ڂ𒊏o
substr (c (x, y), start = c (2, 5), stop = c (4, 7))

# ����ɂ��u�������B���̑���͌��̃x�N�g����ύX����
substr (x, start = 2, stop = 3) <- "X"
x

# �����̃x�N�g���́A��x�P�Ƃ̃I�u�W�F�N�g�ɂ܂Ƃ߂�
z <- c (x, y)
substr (z , start = c (2, 5), stop = c (4, 7)) <- c ("X", "Y")
z

# �ȉ��̓G���[�ɂȂ�̂Œ���
# substr (c (x, y), start = c (2, 5), stop = c (4, 7)) <- c ("X", "Y")


z <- "R�A�[��S�A�[��"
substr (z, 2, 5)

# 2�����ڂ���5�����ڂ�u��������H
substr (z, 2, 5) <- "="
z
# �E�ӂ�1�����Ȃ̂�1���������u��������ꂽ


x <- "R�t����"
y <- "�n���h�u�b�N"

# ���@�\�̕ʊ֐��usubstring�v
substring (x, first = )

# �A���t�@�x�b�g�啶��
(str1 <- paste(LETTERS, collapse = ""))

# �usubstr�v�̏ꍇ�͈ʒu�x�N�g���̈ꕔ�𗘗p
substr (str1, c (2,5), c (3,6))
# �usubstring�v�̏ꍇ�͈ʒu�x�N�g�������ׂė��p
substring (str1, c (2,5), c (3,6))




  ## ----- SECTION 038 �w��̕�������؂�Ƃ��ĕ�����𕪊�����


x <- "R�t����"

strsplit(x, split = "�t")

strsplit(x, split = "")

y <- c("R�t����","C&R")

strsplit(y, NULL)

strsplit(y, split = "�t")

(z <- strsplit(y, c("�t", "&")))

z[[2]]


# �u.�v�͐��K�\���ł��ׂĂ̕������w�肵�����ƂɂȂ�
strsplit (x, ".")
# ���ׂĂ̕�������؂蕶���ɗ��p�����̂ŕ����̐������u""�v���\�������
# �ufixed�v�������w�肵�āu.�v�𕶎��ʂ�ɉ��߂���
strsplit (x, ".", fixed = TRUE)
# �ux�v�Ɂu.�v�͊܂܂�Ă��Ȃ��̂ŕ�������Ȃ�
# ���X�g���x�N�g��������B�Ȃ��usplit�v���������ȗ�����
unlist (strsplit (x, "�t"))






  ## ----- SECTION 039  ��������w��̒����ɐ؂�l�߂�

z <- c ("R�t�����n���h�u�b�N", "�Γc��L")
# �uwidth�v�͕\�����B���{��ł�1������2�ƃJ�E���g
# ���{��Ŋ�����w�肷��Ɛ؂�̂Ă���

strtrim (z, width = 2)
strtrim (z, width = 3)
strtrim (z, width = c(4, 2))





  ## ----- SECTION 040  ��������w�肵���p�^�[���Ō�������
jp.str <- c ("�R�{�R���Y", "�R�c���Y", "�R�c�K�V", "�{�R�K�V��")
# �u�R�c�v���������A�Y���ԍ����o��
(j <- grep ("�R�c", jp.str))
jp.str[j]

# �Y���ԍ��ł͂Ȃ��������̂��̂��o��
grep ("�R�c", jp.str, value = TRUE)

# ������̍ŏ�����v�DPerl �݊��̌���
(j <- grep ("^�{�R", jp.str, perl = TRUE))

# UTF-8���iMac��Linux�j�ł͈ȉ��ł��悢�iR-2.15�ȍ~�ł�Windows�ł��\�j
# (j <- grep ("\\<�{�R", jp.str))
# ������̍Ōオ��v
(j <- grep ("�K�V$", jp.str))
# UTF-8���iMac��Linux�j�ł͈ȉ��ł��悢�iR-2.15�ȍ~�ł�Windows�ł��\�j
# (j <- grep ("�K�V\\>", jp.str))

# Perl�݊����g������
x <- c("AB2C", "DEF", "ghi")
grep("[[:upper:]]", x, perl = TRUE, value = TRUE)
#  �ȉ��ł����삷���������
grep("[:upper:]", x, value = TRUE)
#  


# ����������̈�v�����ʒu�ƒ���
(x <- paste (c (LETTERS, LETTERS), collapse = "") )

# �ŏ��Ɉ�v�����ʒu�Ƃ��̒���
regexpr ("BCD", x)

# ��v�������ׂĂ̈ʒu�Ƃ��ꂼ��̒���
gregexpr ("BCD", x)

# URL���܂ޕ�����
str <- "�����http://cran.r-project.org/�ŁA�����http://www.google.co.jp/�ł��B"
# URL�����o���P���ȗ�
# tmp <- gregexpr ("https?://.+/(.+/)*?", str)
tmp <- gregexpr ("https?://.+?/(.+/)*?", str, perl = TRUE) # �r�������ɂ��C��
# tmp <- gregexpr ("https?://[^/]+/([^/]+/)*?", str, perl = TRUE)
# �iURL�� / �ŏI��邱�Ƃ��O��j �r�������ɂ��C��  http://d.hatena.ne.jp/a_bicky/

substring(str, tmp[[1]], tmp[[1]] + attr (tmp[[1]], 'match.length') -1)

  ## �G�X�P�[�v�̗��p�i�{���ɂ͌f�ڂ��Ă��܂���j
  (x <- c("AA","B.", "C\\C"))
  grep(".", x, value = TRUE)
  grep("\\.", x, value = TRUE)


jp <- "�R�{"
#  Windows�ł̕����R�[�h��CP932
charToRaw(jp)

# �Ƃ��낪�����R�[�h��UTF-8�ɕϊ������
(jp2 <- gsub("�R","��",jp))
charToRaw(jp2)

#  ���w�肷���CP932�Ƃ��ď��������
(jp3 <- gsub("�R","��",jp,fixed = TRUE))
charToRaw(jp3)



alice <- "Alice was beginning to get very tired of sitting by her sister on the bank,
and of having nothing to do:"
alice.vec <- unlist (strsplit (alice, split = "[[:space:]]+|[[:punct:]]+"))
head (alice.vec)

table (alice.vec)

x <- c ("�[��", "�ݖ�")
grep ("�[", x) # R-2.15 �ȍ~  Windows�ł��G���[�ɂȂ�܂���B

charToRaw ("�[")
charToRaw ("[")

x <- c("ABC", "D3", "EF G")
grep("\\s", x)
grep("\\.", x)





  ## ----- SECTION 041 ��������w�肵���p�^�[���Œu������
jp.str <- c ("�Γc��L", "�Γc���Y", "�R�c���Y", "�K���K�Y")
# �u�΁v���u�R�v�ɒu��
sub ("��", "�R", jp.str)

# �u�΁v���邢�́u�R�v���u��v�ɒu��
sub ("[�ΎR]", "��", jp.str)

# �u�Γc�v���邢�́u�R�c�v���u�����v�ɒu��
sub ("�Γc|�R�c", "����", jp.str)

# �u�K�v���u��v�ɒu��
sub ("�K", "��", jp.str)

# �u�K�v���u��v�Ɉꊇ�u��
gsub ("�K", "��", jp.str)

y <- "abcDA"
# ��v�����p�^�[����啶���ɕς���.  Perl�݊����w�肷��
gsub ("(ab)", "\\U\\1", y, perl = TRUE)
# �ŏ��̎Q�Ƃ�啶���ɁA2�ڂ̎Q�Ƃ��������ɕς���
gsub ("(ab)c(DA)", "\\U\\1 \\L\\2", y, perl = TRUE)

(z <- paste ("ID", 1:10, sep = ""))
# �Ō�̐������폜����
gsub ("[0-9]$", "", z)
# 2���ȏ゠��ꍇ
gsub ("[0-9]+$", "", z)




  ## ----- SECTION 042  ������̕����R�[�h���m�F����/�w��̕����R�[�h�̌n�ɕύX����

#������̕����R�[�h���m�F�B�ȉ���Windows���ł̏o��
charToRaw ("������������")
#  [1] 82 9f 82 a0 82 a2 82 a1 82 a4 82 a3
# 2�ڂ́u���v��Shift-Jis(CP932)�ł�16�i�@�Łu82 a0�v

# UTF-8�ł̕����R�[�h
# �u���v��UTF-8�ł�16�i�@��e3 81 82
# �uenc2utf8�v�֐��ŕ�����̕����R�[�h��UTF-8�ϊ����ĕ\��
charToRaw (enc2utf8 ("������������") )

# �w�肵��������̕����R�[�h�̌n��ύX����
y <- iconv ("��", from = "CP932", to = "UTF-8")
# charToRaw(enc2utf8("��") ) �Ɠ���
# UTF-8�ł̕����R�[�h�ɕϊ�����Ă���
charToRaw (y)

# Unicode(UCS-2)�ł̃R�[�h���m�F����
# install.packages ("Unicode") # �ŏ��ɃC���X�g�[������
library ("Unicode")
as.u_char (utf8ToInt ("��"))

# Windows�̏ꍇ�A��������UTF-8�ɕϊ�����
y <- enc2utf8 ("��")
# UCS-2�ɂ��u���v�̃R�[�h
as.u_char (utf8ToInt (y))



x <- data.frame (Id = c ("����", "����", "����"))
write.table (x, file = "x.csv", fileEncoding = "UTF-8")
getwd()

# �R�l�N�V�������J��
out <- file ("utf8.csv", "w", encoding = "UTF-8")
write.table(x, out)
# �R�l�N�V���������
close (out)






  ## ----- SECTION 044 ���q���쐬����
x <- c ("A", "B", "C")
(x <- rep (x, 3))
# ���q��
(y <- factor (x))

# �ʏ�̓Y���w��
y [1:2]
y [2]


# �ʃ��x����t����
(y <- factor (x, label = "alphabet"))
str (y)
# ���������m�F
nlevels (y)


# �w�肳�ꂽ���������w��̐������J��Ԃ�
(x <- gl (3, 5, labels = c ("��", "��", "��")))

# ������ǉ�����B�������u"��"�v�ɑ�����f�[�^�͂Ȃ�
levels (x) <- c ("��", "��", "�", "��")
x
# �f�[�^�̂Ȃ������͍폜
x [, drop = TRUE]





  ## ----- SECTION 044  ���q�̐����ɕ��я����`����
# ������3�ŁA���ꂼ��v�f��5�̃x�N�g��
# �����ɂ͕��я�������
(x <- gl (3, 5, labels = c ("��", "��", "��")) )
levels (x)
# ���q�̕��я������U���͂Ȃǂł͎Q�Ɛ����Ƃ��ė��p�����
head (iris)


levels (iris$Species)
x.aov <- aov (Petal.Length ~ Species, data = iris)
# �W���\���m�F
# ���̒i�K�ŎQ�Ɛ����i�x�[�X�j��"setosa"
summary.lm (x.aov)

# �Q�Ƃ̏���ύX�������Ŗ��O��ύX���Ă�
levels(iris$Species) <- c("Csetosa","Bversicolor", "Avirginica")
str(iris$Species)
x.aov2 <- aov (Petal.Length ~ Species, data = iris)
# �Q�Ɛ����i�x�[�X�j��"setosa"�̂܂�
summary.lm (x.aov2)

# �Q�Ƃ̐擪�����̐擪�i�x�[�X�j�����ւ���
iris$Species <- relevel (iris$Species, "Avirginica" )
levels (iris$Species)
# ������x�W���\���m�F
# �Q�Ɛ������ύX����Ă���
y.aov3 <- aov (Petal.Length ~ Species, data = iris)
summary.lm (y.aov3)

# �g�ݍ��݃f�[�^�̐�����ύX����ƃR�s�[���쐬����Ă���
# �R�s�[����������폜
rm(iris)
# �����𕽋ϒl�̑傫���ŕ��т�����
iris$Species <- reorder (iris$Species, iris$Sepal.Width, mean)
levels (iris$Specie)

w.aov <- aov (Petal.Length ~ Species, data = iris)
summary.lm (w.aov)



  ## ----- SECTION 046  �g���Ă��Ȃ����q�̐������폜����

# iris�f�[�^����uversicolor�v�i��������������W���𒊏o
iris.sub <- iris [iris$Species != "versicolor", ]
# �����������Ƃ��Ă͎c���Ă���
levels (iris.sub$Species)
# �g���Ă��Ȃ��������폜
iris.sub <- droplevels (iris.sub)
levels (iris.sub$Species)





  ## ----- SECTION 047
# ���я��Ƃ͕ʂɑ召�֌W������
# insect�f�[�^�̈��q�����ɂ͑召�֌W�͂Ȃ�
head (InsectSprays)

levels (InsectSprays$spray)
is.ordered (InsectSprays$spray)
str (InsectSprays$spray)

ins <- aov (count ~ spray, data = InsectSprays)
summary (ins)

summary.lm (ins)
contrasts (InsectSprays$spray)


# �召�֌W�𓱓�����
InsectSprays$spray <- ordered (InsectSprays$spray,
	levels = c("A", "B", "C", "D", "E", "F"))

levels (InsectSprays$spray)
is.ordered (InsectSprays$spray)
str (InsectSprays$spray)

ins <- aov (count ~ spray, data = InsectSprays )
summary (ins)

summary.lm (ins)

contrasts (InsectSprays$spray)





  ## ----- SECTION 048 ���q�̐��������R�ɑg�ݍ��킹��
(a <- gl (2, 4, 8, labels = c ("treat", "ctrl")))
(b <- gl (2, 1, 8, labels = c ("M", "F")))
# a��b�̑g�ݍ��킹���쐬
(a.b <- interaction(a, b))
levels (a.b)

# ����������ւ���
(a.b2 <- interaction (a, b, lex.order = TRUE))
levels (a.b2)





  ## ----- SECTION 049 ���q�̐������ƂɊ֐���K�p����
# �u����߁v�f�[�^
head (iris)

# �uaggregate�v�֐��̓f�[�^�t���[����Ԃ�
(x <- aggregate (iris[1], iris[5], mean))
# ���f�����Ŏw�肷��iR-3.0.0���痘�p�\�j
x <- aggregate (Sepal.Length ~ Species, data = iris, mean)

# �Ȃ��O�߂ň��q�̏�����ύX���Ă���ꍇ�A�e�L�X�g�Ƃ͏o�͏����قȂ邱�Ƃ�����܂��B
#  ���̏ꍇ�́A�ꎞ�I�ɕύX����Ă���iris�I�u�W�F�N�g�����Ƃɖ߂�����  rm(iris)  �����s���Ă��������B

# ������ɓK�p
(x <- aggregate (iris[1:4], iris[5], mean))
# ���f�����Ŏw��
(x <- aggregate (. ~ Species, data = iris, mean))


# �����f�[�^
sleep
attach (sleep) # �f�[�^���o�^���A�ʂ̃x�N�g���Ƃ��Ĉ���
ave (extra, group)

# attach �����Ɏ��s������@
detach(sleep) # attach������
ave (extra, group) # ���s�ł��Ȃ��Ȃ�
with (sleep, ave (extra, group))#�uwith�v�֐���K�p

# �����̈��q�ŃO���[�v����
head (CO2)

levels (CO2$Type); levels (CO2$Treatment)

# �uType�v,�uTreatment�v�̑g�ݍ��킹���Ƃɕ��ϒl�����߂�
# �utapply�v�֐��̓O���[�v�����ɗ��p���ꂽ�I�u�W�F�N�g�Ɠ��������̔z���Ԃ�
(z <- tapply (CO2$uptake, CO2 [c ("Type", "Treatment")], FUN = mean) )
(y <- tapply ( iris [, 1], iris [5], mean))

mode (y)
# �f�[�^�t���[���ɕϊ�
as.data.frame (as.table (y), responseName = "mean" )


# �ȑf����}������ƃ��X�g��Ԃ�
(y2 <- tapply(iris [, 1], iris [5], mean, simplify = FALSE) )

mode (y2)

# �uave�v�֐��Ńf�[�^�t���[���Ɠ����s���̃x�N�g���Ƃ��ďo��
uptake.m <- ave (CO2$uptake, CO2 [c ("Type", "Treatment")], FUN = mean )
# �����̑g�ݍ��킹�Ɏg��ꂽ�Y��
index <- tapply (CO2$uptake, CO2 [c ("Type", "Treatment")] 
index.fac <- interaction (CO2$Type, CO2$Treatment)

data.frame(index = index, factor = index.fac, mean = uptake.m)



# chickwts �f�[�^��feed�������Ƃɏ��ʂ��ӂ������ǉ�
head(chickwts)
chickwts$rank <- ave(chickwts$weight, chickwts$feed, FUN = rank)
head(chickwts)

# �����̑g�ݍ��킹�Ɏg��ꂽ�Y�����ԍ�
index <- tapply (CO2$uptake, CO2 [c ("Type", "Treatment")] )
# �����̑g�ݍ��킹�̖��O���擾
index.fac <- interaction (CO2$Type, CO2$Treatment)
data.frame (index = index, factor = index.fac, mean = uptake.m)

# �uby�v�֐��̓J�e�S�����Ƃɉ��Z��K�p����
# ��1�����̓f�[�^�t���[���A��2�����ɃO���[�v�����q���w��
(iris.by <- by (iris [1:4], iris [5], colMeans) )

# �z��ł��邱�Ƃ��m�F
is.array (iris.by)

## �ȉ��͓��삵�Ȃ�
# by (iris [1:4], iris [5], mean) 





  ## ----- SECTION 050 �_���l�̊�b
x <- c (TRUE, TRUE)
y <- c (FALSE, FALSE)

# 1��0�͘_���l�Ƃ��Ĉ�������
(z <- c (FALSE, TRUE, 1))

# �x�N�g���̍ŏ��̗v�f���������肳���
x || y

# �x�N�g���̗v�f���Ƃɔ�r���s����
x | y
x && y
x & y

# �v�f��������Ȃ��ꍇ�A�Z�����������T�C�N�������
# �������{���ɂȂ��Ă��Ȃ��ꍇ�͌x�����\�������
x & z

!x # �_���l�̔��]






  ## ----- SECTION 051 �_���x�N�g�����쐬����
# ��̘_���I�u�W�F�N�g
x <- logical (1)
x
mode (x)
# ��Ƃ܂�������������
(x1 <- vector ("logical", 1) )

(x2 <- TRUE)
(x3 <- T)
(x4 <- c (TRUE, FALSE, T, F))

# 0 �ȊO�̐��l�́uTRUE�v�ɕϊ�����܂�
(y <- 0:5)
[1] 0 1 2 3 4 5
(y2 <- as.logical (y))

# ������́uF�v�ƁuT�v�������uNA�v�ɋ����ϊ�����܂�
(y3 <- as.logical (LETTERS))




  ## ----- SECTION 052 �_���x�N�g�����v�Z����
(x <- 1:10)
# �_�����Z�̌���
(y <- x > 5 )
sum (y)
any (y)
which (y)


(mat <- matrix (1:9, nrow = 3))

(mat > 5)

(mat > 5) * 1






  ## ----- SECTION 053 ��̃x�N�g��������������

# ��̃x�N�g����������
x <- vector ()
length( x )
mode (x)
str (x)
is.null (x)

(y <- vector (mode = "character", length = 3))
(y <- vector ("numeric", 3))
(y <- vector ("double", 3))
(y <- vector ("integer", 3))
(y <- vector ("complex", 3))
(y <- vector ("raw", 3))

# �������̌�����
# ���K���z�ɏ]��������p��
tmp <- rnorm (10000)

# ����p�̃x�N�g����p�ӁB�����̗v�f����1��
z1 <- 0.0

# ����̂��тɃx�N�g�����g������
system.time (
 for(i in seq_along (tmp)){
  z1 [i] <- tmp [i]
 }
)
# ���s���ʂ͊��ɂ���ĈقȂ�܂�

# �������������Ɠ����T�C�Y�̃x�N�g����p��
z2 <- vector ("double", length (tmp))

system.time (
 for(i in seq_along (tmp)){
  z2 [i] <- tmp [i]
 }
)




  ## ----- SECTION 054 �x�N�g���̗v�f�����擾�E�ύX����
(x <- 1:5) 
length (x)

# �v�f�����L����
length (x) <- 10
x
# �v�f����؂�l�߂�
length (x) <- 6
x




  ## ----- SECTION 055  �x�N�g���̗v�f�ɖ��O��t����
(x <- 1:5)
(names (x) <- LETTERS [1:5])
# �uB�v�Ƃ������O�̕t�����v�f
x [names (x) == "B"]


x <- 1:5
(names (x) <- LETTERS [1:5])

y <- 5:9

(names (y) <- LETTERS [5:9])
# ���O�t���I�u�W�F�N�g�̉��Z
x + y
# �ŏ��̃x�N�g���̖��O�������g����






  ## ----- SECTION 056  �x�N�g������v�f�𒊏o����
# �Y�����g���Ē��o
x <- LETTERS
x [1:10] # �ŏ�����10�𒊏o

x [c (1, 3, 5)]
# �A���t�@�x�b�g��������Ɏ��o��
x [seq (1, 26, 2)]

# �w�肳�ꂽ�Y���̗v�f�u��
(x[1:5] <- letters [1:5])
x

# �w�肳�ꂽ�Y���̗v�f�����O
x <- x [-(1:15)]
x

#  �A�Ԃł͂Ȃ��ꍇ�̍폜���@
(x <- x [ -c(2,4,6,8,10)])

# x �𐔒l�x�N�g���ɕύX
x <- -5:5
length(x)

# �����w��Œ��o
x [x > 0]
# �_�����Z�q�u&�v�Ɓu|�v���g��
x [x < -2 & x > 2 ]
x [x < -3 | x > 3 ]

# �����ɂ���Ēl��ς���
x [x < 0 ] <- NA
x


# [ ]���Z�q���g��
z <- 1:5
names (z) <- LETTERS [1:5]
z

z [3]

z [[3]] # 

z [ names (z) == "B" ]

names (z) == "B"

# B��D�Ƃ������O�������v�f���o�������i�Ӑ}�������ʂɂȂ�Ȃ���j
z [names (z) == c ("B", "D")]

# %in%���Z�q���g��
z [names (z) %in% c ("B", "D")]
names (z) %in% c ("B", "D")

z [ !(names (z) %in% c ("B", "D"))]
## z [ !names (z) %in% c ("B", "D") ]#�ۊ��ʂ��ȗ�

x <- c(TRUE, FALSE)
y <- c(TRUE, TRUE)

!x | y
!(x | y)




  ## ----- SECTION 057 �x�N�g����������ɓK������Y�����擾����
(x <- rep (c (TRUE, FALSE), 3))
# �v�f��TRUE��1�ł��܂܂�邩
any (x == TRUE)
# �v�f��TRUE�̓Y���ԍ�
which (x == TRUE)

# �A���t�@�x�b�g�uK�v���܂ޗv�f�ԍ�
which (LETTERS == "K")

# �ő�l�ŏ��l�̓Y��
y <- 5:10
which.max (y)
which.min (y)




  ## ----- SECTION 058 �x�N�g���̗v�f����בւ���
# 1����10�������_���ɕ��ׂ��x�N�g��
# �����ł͗����̎���w�肵�܂�
set.seed (1)
(x <- sample (10) )
# �\�[�g����Ă��Ȃ���
is.unsorted (x)
# �\�[�g����
sort (x)

sort (x, decreasing = TRUE) # �~��
rank (x)

set.seed (2)
(z <- sample (20) )
sort (z) [9] ; sort (z) [11]


set.seed (2)
(z <- sample (20) )
# �ʏ�̃\�[�g
sort (z)
# ���ƃx�N�g�����\�[�g��������9�Ԗڂ̒l����ɑO��ɐU�蕪��
sort.int (z, partial = 9 )
# 9�Ԗڂ�11�Ԗڂ̒l����ɑO��ɐU�蕪��
sort.int (z, partial = c (9,11) )
# 9�Ԗڂ�18�Ԗڂ̒l����ɑO��ɐU�蕪��
sort.int (z, partial = c(9,18) )

set.seed (1)
(x <- sample (10) )
# �����ɕ��בւ����ꍇ�̓Y��
order (x)
sort.list (x)
# �Y�����g���ĕ��בւ���usort(x)�v�ɓ���
x [order(x)]




  ## ----- SECTION 059  �x�N�g���̗v�f��u��������
(x <- c (1:5, NA))
# 3�Ԗڂ̗v�f��30�ɒu��������
replace (x, 3, 30)
# 2�Ԗڂ�3�Ԗڂ����ꂼ��u��������
y <- replace (x, c (2, 3), c (20, 30))
y

# �Y�����g���Ēu��������
# ���̏ꍇ���A�x�N�g�����ύX�����
x [c (2, 3)] <- c (22, 33)
x


x [is.na (x) ] <- 0
x

replace (x, is.na (x), 0)




  ## ----- SECTION 060 �x�N�g���ɗv�f��ǉ�����
(x <- 1:5)
# �����Ɍ���
(y <- c (x, 7:10))
# 5�Ԃ߂̒����6��}��
(z <- append (y, after = 5, 6))

# 3�Ԗڂ̌��333��888�����ꂼ��}��
(z <- append (y, after = 3, c(333, 888)))




  ## ----- SECTION 061 �x�N�g���̗v�f�̏d���𒲂ׂ�
(x <- c (1:5, 3:7, 5:10))
(y <- duplicated (x))
# �d�����Ă���ꏊ
which (y)
# �d���o�����Ă���v�f
x [y]


z <- c (1, 2, 2, 2, 5, 5, 5, 5, 8, 2)
# �������l���J��Ԃ�����
(z1 <- rle (z))

# ��������
(inverse.rle (z1))





  ## ----- SECTION 062  �x�N�g���̗v�f�̏d�����폜����
x <- c (1, 2, 2, 2, 5, 5, 5, 5, 8, 2)
unique (x)

# �폜�Ώۂ���ꕔ�̗v�f���O��
unique (x, incomparables = 2 )


