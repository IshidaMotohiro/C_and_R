
# ��2��  2014�N4��16��


############################################################
#                      ��14�� R�̉��p                      #
############################################################



  ## ----- SECTION 201  ���O�̏������ʂ�\������

# ���O�̎��s���ʂ͎����I�ɕۑ������
x <- 1:10
x

.Last.value

y <- .Last.value
y





  ## ----- SECTION 202  �K�x�[�W�R���N�V���������s����

# �K�x�[�W�R���N�V�������s��
 gc ();gc ()





  ## ----- SECTION 203  �o�b�`���������s����

# �ȉ���OS�̃^�[�~�i���Ŏ��s���܂�
R CMD BATCH --vanilla batch.R result.txt





  ## ----- SECTION 204  R�̏o�͂�LaTeX�t�H�[�}�b�g�ɕϊ�����

Sweave ("Sweave.Rnw", encoding = "CP932")

## ������ Sewave.Rnw �t�@�C���𗘗p���ĉ�����
## % Sweave �T���v��%

## \documentclass{jsarticle}
## \usepackage{ascmac}
## \begin{document}
## \section {���K�����̕��ςƕ��U 1}
## \begin{verbatim}
## <<echo=TRUE>>
## \end{verbatim}
## �R�[�h�Əo�̗͂�������荞��

## <<echo=TRUE>>=
## set.seed(123); x <- rnorm(100)
## mean(x); var (x)
## @
## ���Ȃ킿����\Sexpr{format(mean (x), digits = 2)}
## �͕��U\Sexpr{format(var (x), digits = 2)} �ł��B
## \section {���K�����̕��ςƕ��U 2}
## \begin{verbatim}
## <<echo=TRUE,results=hide>>
## \end{verbatim}
## �R�[�h�݂̂���荞��
## <<echo=TRUE,results=hide>>=
## set.seed(123); x <- rnorm(100)
## mean(x); var (x)
## @
## \section {���K�����̕��ςƕ��U 3}
## \begin{verbatim}
## <<echo=FALSE>>
## \end{verbatim}
## �o�݂͂̂���荞��
## <<echo=FALSE>>=
## set.seed(123); x <- rnorm(100)
## mean(x); var (x)
## @
## �摜���쐬����
## \begin{figure}[h]
## \begin{center}
## \setkeys{Gin}{width=1.0\textwidth}
## <<echo=TRUE,fig=TRUE,width=7,height=4>>=
## hist(x)
## @
## \caption{$x$�̃q�X�g�O����}
## \label{fig1}
## \end{center}
## \end{figure}

## �\�̍쐬
## \begin{center}
## <<echo=FALSE,results=tex>>=
## library (xtable)
## xtable (summary (cars),
## caption = "�p�x�\",
## label = "table1")
## @
## \end{center}
## \end{document}





  ## ----- SECTION 205  ���t�⎞�����f�[�^�Ƃ��Ĉ���
# �uDate�v�N���X�̃I�u�W�F�N�g
as.Date ("2014-01-28")

as.Date ("2014/01/28")

(d1 <- as.Date ("1/28/2014", format = "%m/%d/%Y"))

(d2 <- as.Date ("02/03/2014", format = "%m/%d/%Y"))

class (d1)

as.numeric (d1)

# �����Z
d2 - d1

difftime (d2, d1, units = "hours")

 # �w��̒����̓��t���I�u�W�F�N�g�𐶐�����
year1 <- seq (as.Date ("2000-12-1"), by = "days", length = 50)
# ���ϒl
mean (year1)

# �ő�l�ƍŏ��l
max (year1); min (year1)

# ���ԓ��̊e�j���̐�
table (weekdays (year1))



# POSIX�K�i�̃I�u�W�F�N�g
(p1 <- as.POSIXct ("2014-01-28 01:0:0") )

(p2 <- as.POSIXct ("2014/02/03 23:0:0") )

class (p1)

p2 - p1

max (p2, p1); min (p2, p1)

# ���X�g�`���̃I�u�W�F�N�g�Ƃ��č쐬
(p3 <- as.POSIXlt ("2014-01-28 01:0:0") )

(p4 <- as.POSIXlt ("2014-02-03 23:0:0") )

class (p3); is.list (p3)

p4 - p3

names (p3)

p3$year; p3$mday; p3$wday

max (p3, p4); min (p3, p4)

# ���t���͂̊֐�
strptime ("2014-02-03 23:0:0", format = "%Y-%m-%d %H:%M:%S")

# �ꕔ�̎w��̓��P�[���ˑ�
strptime ("2014-Feb-03 23:0:0", format = "%Y-%b-%d %H:%M:%S")

# ���P�[����ύX
lct <- Sys.getlocale ("LC_TIME"); Sys.setlocale ("LC_TIME", "C")

st1 <- strptime ("2014-Feb-03 23:0:0", format = "%Y-%b-%d %H:%M:%S")
st1

strftime (st1, format = "%Y�N%m��%d�� %H��%M��%S�b")

# ���P�[�������Ƃɖ߂�
Sys.setlocale ("LC_TIME", lct)

as.Date ("Friday April 26 2011", format = "%A %B %d %Y")

# ���P�[����ύX
lct <- Sys.getlocale("LC_TIME"); Sys.setlocale("LC_TIME", "C")

as.Date ("Friday April 26 2011", format = "%A %B %d %Y")

# ���P�[�������Ƃɖ߂�
Sys.setlocale("LC_TIME", lct)






  ## ----- SECTION 206  �R���\�[���̕\�����𒲐�����

# �\�����̃f�t�H���g���m�F
options ("width")

# options()$width ��
# getOption ("width") �Ƃ��Ă��悢
rnorm (10)

 # �f�t�H���g��ύX
opt <- options (width = 50)
rnorm (10)

# �f�t�H���g�ɖ߂�
options(opt)





  ## ----- SECTION 207 �W�����Z�����s����

(x <- LETTERS [1:7] )

(y <- LETTERS [3:10])

# �W���̘a
union (x, y)

# �W���̐�
intersect (x, y)

# �W���̍�
setdiff (x, y)
# �����̏��Ԃ����ւ���
setdiff (y, x)

x [1]; is.element (x [1], y)


is.element ("A", y)

x [5]; is.element (x [5], y)






  ## ----- SECTION 208  �֐��̍ő剻�^�ŏ����ɂ���

like <- function (x) {
  function (p) {
    xn <- length (x)
    xs <- sum (x)
    p^xs * (1-p)^(xn - xs)
  }
}
x <- c (1,1,0,0,0)
(like (x)) (0.5)

(xo <- optimize (like (x), c (0, 1), maximum = TRUE))

plot (like (x), from = 0, to = 1, lwd = 2, cex.lab = 1.6,
      xlab = "�m��", ylab = "�ޓx")
lines (c (xo$maximum,xo$maximum), c (0, xo$objective), lwd = 2)

# ���K���z�̑ΐ��ޓx��Ԃ��֐�
like2 <- function (x) {
  function (p) {
    m <- p [1]
    s <- p [2]
    sum (dnorm (x, mean = m, sd = s, log = TRUE))
  }
}


# ���� 50 �W���΍��ɂ�����������
z <- rnorm (100, mean = 50, sd = 10)
# ���ۂ̕��ςƕW���΍�
mean (z); sd (z)

# �p�����[�^��ΐ��ޓx�Ő��肷��
optim (c (30,5), like2 (z), control = list (fnscale = -1))





  ## ----- SECTION 209  �I�u�W�F�N�g�̃X�R�[�v�𒲂ׂ�

search () # ���s�󋵂ɂ���ĕω����܂�

# �����̂��߈�x��ƃX�y�[�X�̂��ׂẴI�u�W�F�N�g���폜
rm (list = ls ())
(x1 <- 1:5)

(x2 <- LETTERS [1:5])

ls ()

(z <- data.frame (x1 = x1, x2 = x2) )

# x1��x2���폜
rm (x1, x2)
x1
x2

search()

# �uattach�v����ƁA�uz�v�����ǉ�����A�ux1�v�Ɓux2�v���p�ӂ����
attach (z)
search()

x1
x2

#�uz�v�������p�X�ɑ}������Ă���
search ()

# ��`�����o���̂Ȃ��I�u�W�F�N�g�ɃA�N�Z�X�ł���
pi

# ��ƃX�y�[�X�Ɂupi�v�͂Ȃ�
ls ()

find ("pi")

# �upi�v�́ubase�v�p�b�P�[�W�̃I�u�W�F�N�g�Ȃ̂Ō����p�X�̐�ɂ���
get ("pi", envir = baseenv() )

# �O���[�o������k��Ȃ��ƃA�N�Z�X�͂ł��Ȃ�
get ("pi", envir = globalenv(), inherits = FALSE )







  ## ----- SECTION 210 �����m�F����

environment ()

sys.frame ()

 
################
# ���ƃt���[��
func1 <- function (x) {
  cat ("func1�̊�\n")
  print (environment ())
  cat ("func1�̐e��\n")
  print (parent.env (environment ()) )
  cat ("func1�̃t���[���ԍ�\n")
  print (sys.nframe())
  cat ("func1�̃t���[����\n")
  print (sys.frame (sys.nframe()))
  cat ("func1�̐e�t���[��\n")
  print (parent.frame () )
  func2 (x) # �����ŕʂ̊֐��ufunc2�v���Ăяo��
}

func2 <- function (x) {
  cat ("func2�̊�\n")
  print (environment ())
  cat ("func2�̐e��\n")
  print (parent.env (environment ()) )
  cat ("func2�̃t���[���ԍ�\n")
  print (sys.nframe())
  cat ("func2�̃t���[����\n")
  print (sys.frame (sys.nframe()))
  cat ("func2�̐e�t���[��\n")
  print (parent.frame () )
  func3 (x) # �����ŕʂ̊֐��ufunc3�v���Ăяo��
}

func3 <- function(x) {
  cat ("func3�̊�\n")
  print (environment ())
  cat ("func3�̐e��\n")
  print (parent.env (environment ()) )
  cat ("func3�̃t���[���ԍ�\n")
  print (sys.nframe())
  cat ("func3�̃t���[����\n")
  print (sys.frame (sys.nframe()))
  cat ("func3�̐e�t���[��\n")
  print (parent.frame () )
  return (x)
}




# �֐������s���Ă݂�  #  �o�͎͂��s���Ɉˑ����܂�
func1 (1)

# �֐��̃^�C�v
typeof (func1)

# �f�[�^�t���[���Ɂuattach�v�֐���K�p����ƐV�������Ƃ��Ĉ�����
z <- data.frame (x1 = 1:5, x2 = 6:10)
attach (z)

# ���uz�v�ɐ��l�x�N�g�� 1:3 ���w���I�u�W�F�N�g inZ ��ǉ�
assign ("inZ", 1:3, pos = "z")
# assign ("inZ", 1:3, envir = parent.env (environment ())) �ł����̏ꍇ�͓���
ls () # �����s���Ă��AGlobalEnv �� inZ �I�u�W�F�N�g�͂Ȃ�

# �I�u�W�F�N�g�̊����m�F
find ("inZ")

# �����w�肵�ăI�u�W�F�N�g���m�F
get ("inZ", pos = "z")

# get ("inZ", envir = parent.env (environment ())) �ł�����





  ## ----- SECTION 211  �O���[�o���E�I�u�W�F�N�g�ɑ������

x <- 0

# �֐����Łux�v�𐶐�
func1 <- function () {
  x <- 88
  print (x)
}
func1 ()

# �O���[�o�����́ux�v�͕ύX����Ȃ�
x

 # ����k���đ��
func2 <- function () {
  x <<- 88
  print (x)
}
func2 ()

x

# ����k���đ��
func3 <- function () {
  assign("x", 123, parent.frame())
  print (x)
}
func3 ()

x


x <- 1
# �֐����ŕ����� x ������q�ɂȂ��Ă���ꍇ�C
# ����q�̉��� <<- ���Z�q���g���Ă��C���̏��x���ύX����邾����
# �O���[�o������ x �͕ύX����Ȃ�
(function() { x <- 2; (function() x <<- 3)(); print(x) })(); x
# ���̂悤�ȏꍇ��
(function() { x <- 2; (function() assign("x", 3, globalenv()))(); print(x) })(); x
# �Ƃ���





  ## ----- SECTION 212 �f�o�b�O�����s����

func <- function (x) {
  a <- x
  b <- 2
  browser (text = "x < 1", expr = x < 1)
  print (a + b)
}
func (4)

func (0)



func1 <- function (x) {
  cat ("func1����\n")
  func2 (x)
}
func2 <- function (x) {
  cat ("func2�̊�\n")
  func3 (x)
}
func3 <- function(x) {
  cat ("func3�̊�\n")
  return (x + 1)
}

y <- "A"
func1 (y)


traceback ()

debug (func1)
func1 (y)

undebug (func1)

trace (func3, edit = TRUE)

body (func3)

func1(y)

untrace (func3)

func4 <- function (x) {
  a <- x
  print (a)
  b <- a + 1
  print (b)
  print (a + b)
}

func4 (5)

trace (func4, browser, at = c (3, 5))

func4 (5)

as.list (body (func4)) 
untrace (func4)


## note the differences
(2+3)
{2+3; 4+5}
(invisible(2+3))
{invisible(2+3)}






  ## ----- SECTION 213   �R�[�h�̎��s���x���m�F����
system.time ({x <- rnorm (100000); mean(x)})

#install.packages ("rbenchmark")
library (rbenchmark)

benchmark ({x <- rnorm (100000); mean(x)},  replications = 1000)

# �o�͂�test���́u�o�v�ƁA�R�[�h���܂Ƃ߂�g���ʂɂȂ��Ă��܂��Ă��܂���
# ���s���ʂ̏o�͂ɖ��͂���܂���


# �w�肳�ꂽ�T�C�Y�̍s��̗񕽋ς����߂�֐��ucolMeans�v��
# �uapply�v�֐��Ɂumean�v�֐���K�p�������ʂ��ׂ�

means.1 <- function (n, m) colMeans (array (rnorm (n * m), c (m, n)))
means.2 <- function (n, m) apply (array (rnorm (n * m), c (m, n)), 2, mean)

within (
        benchmark (
                   replications = rep (100, 3),
                   means.1 (100, 100),
                   means.2 (100, 100),
                   columns = c ('test', 'elapsed', 'replications')),
        {average = elapsed/replications} )







  ## ----- SECTION 214   �p�b�P�[�W���쐬����
func <- function(x) {
  cat ("func����\n")
  return (x + 1)
}

# �I�u�W�F�N�gx��ǉ�
x <- data.frame (X = 1:3, Y = LETTERS [1:3])

# �p�b�P�[�W�̐��`����������
package.skeleton (name = "MyFirst", list = c ("func", "x"))

x <- 1
prompt (x)

file.show ("x.Rd")







  ## ----- SECTION 215  S3�N���X���`����

(x <- data.frame (x1 = 1:3, x2 = 10) )

# �I�u�W�F�N�gX���utemp�v�N���X�ƒ�`
class (x) <- "temp"
# �utemp�v�N���X�̏o�̓��\�b�h���`
print.temp <- function (x){
  print (x$x1 * x$x2)
}

print (x)
# print �֐��̒��g
print


methods (plot) # �o�͎͂��s�󋵂Ɉˑ����܂�



# S3�N���X�E���\�b�h�Ƃ��Ċm�F����
getS3method (f = "print", class = "temp")
function (x){
  print (x$x1 * x$x2)
}
getAnywhere (print.temp)








  ## ----- SECTION 216   S4�N���X���`����

#�ufamily�v�N���X���`
family <- setClass ("family", representation (mother = "character",
                                    father = "character",
                                    children = "numeric"),
          prototype (mother = "��", father = "��", children = 0))

# �I�u�W�F�N�g���쐬
fm1 <- family(mother = "�Ԏq", father = "��Y", children = 3)
# fm1 <- new ("family", mother = "�Ԏq", father = "��Y", children = 3)# �����̕��@
fm1@father

slot (fm1, "father")

# �uprint�v�֐��́uS4�v�ł͂Ȃ�
isS4 (print )

setGeneric ("print")
# �uprint�v�֐����uS4�v�̑��̊֐��ƂȂ�
isS4 (print)

# S4�́uprint�v���̊֐��ɂ͂܂����\�b�h���Ȃ�
print (fm1)
# �uprint�v���\�b�h��Ǝ��ɒ�`
setMethod ("print", signature (x = "family" ), function (x) {
                                        # ���e�ƕ�e�����\��
  print (c (x@mother, x@father))
} )

print (fm1)

# �ufamily�v�N���X���p������N���X���`����
setClass ("family2", representation (childNames = "character"),
          contains = "family", prototype (children = 2,
            childName = c ("A�q","B�j") ))

chld1 <- new ("family2", mother = "�Ԏq", father = "��Y",
              childNames = c ("���q","��v"))
# �܂������V�����W�����̊֐��̒�` ���e�̕\�����f�t�H���g�̊֐��Ɛݒ肷��
setGeneric ("member", useAsDefault = function (x) {print (x@father)})

 
# �f�t�H���g�̃��\�b�h�𗘗p���Ă���
member (chld1)

 # �ufamily2�v�I�u�W�F�N�g�Ɂumember�v�I�u�W�F�N�g��
 # �K�p���ꂽ�ꍇ�̃��\�b�h�����߂Ē�`
setMethod ("member", signature (x = "family2" ),
           def = function (x) {
             print (c (x@father, x@mother, x@childNames))
           })

# �V�������\�b�h
member (chld1)

# �W�����̊֐��̒�`���̂Q�F�G���[�`�F�N���s����W���I���̊֐�
setGeneric ("member", def = function (x) {
  value <- standardGeneric ("member")
  if (!is.character (value)){
    stop ("�G���[1�F�Ԃ�l���s���ł�")
  }
})

# ���Ɏ��̂悤�ɐ��l��Ԃ����\�b�h���`�����
setMethod ("member", signature (x = "family2" ),
           def = function (x) {
             1
           })


# �G���[�ƂȂ�
member (chld1)

# ���ؗp�̊֐����`����
# ��ƕ��̖��O���Z�b�g����Ă��邩���`�F�b�N
setValidity ("family2", function (object) {
  if (nchar (object@mother) < 1 | nchar (object@father) < 1 )
    return (FALSE)
})

# �ȉ��̓G���[���Ԃ����悤�ɂȂ�
chld2 <- new ("family2", mother = "", father = "",
              childNames = c ("���q","��v"))

# �Ȃ�S4�N���X�̃R�s�[�́C�ʂ̐V�����I�u�W�F�N�g���쐬����
chld1
chld3 <- chld1

chld3@mother <- "���q"
chld3@father <- "����"
chld3
# �ύX�͂��Ƃ̃I�u�W�F�N�g�ɂ͋y�΂Ȃ�
chld1








  ## ----- SECTION 217   ReferenceClass���`����

# hello�N���X���`
hello <- setRefClass ("myS5",
                      fields = list (name = "character"),
                      methods = list (
                        initialize = function (name = NULL){
                          "�������̃��b�Z�[�W"
                          if(is.null(name)) {
                              cat ("���������܂�\n")
                              initFields (name = "�f�t�H���g�l")
                          }else {
                              name <<- name
                          }
                        },
                        reply = function () {
                          "���ȏЉ��Ԃ��֐�"
                          cat ("�킽����", name, "�ł�\n")
                        },
                        change = function (newName){
                          "name�t�B�[���h�����������܂�"
                          name <<- newName
                        }
                        )
                      )
                      
                      
# �t�B�[���h�ꗗ���Q�Ƃ���
hello$fields ()

# ���\�b�h�̈ꗗ��\������
hello$methods ()

# �I�u�W�F�N�g��������
obj1 <- hello$new ()

# ���\�b�h�̐������Q�Ƃ���
hello$help ("reply")
# ���s���Ă݂�
obj1$reply ()

# ���\�b�h�̐������Q�Ƃ���
hello$help ("change")
# ���s���ĕύX���m�F
obj1$change ("���")
obj1$reply ()


# �A�N�Z�b�T�[��ǉ�
hello$accessors ("name")

# ���\�b�h�̈ꗗ���ĕ\������
hello$methods ()
# �A�N�Z�b�T�[���g���Ă݂�
obj1$getName ()
# �A�N�Z�b�T�[���g���āuName�v�t�B�[���h��ύX
obj1$setName ("����")
obj1$reply ()

# ���\�b�h��ǉ�
hello$methods (
               message = function (toYou) {
                   "���Ζʂ̈��A��Ԃ�"
                 cat (toYou, "����C���߂܂���\n")
               } )

# ���\�b�h�̐������Q�Ƃ���
hello$help ("message")

obj1$message ("�㓡")

# ���O���w�肵�ď�����
obj2 <- hello$new("�R�c")
obj2$reply()


# �Q�ƃN���X�̃I�u�W�F�N�g���R�s�[����
obj3 <- obj1
# �t�B�[���h�́uobj1�v�Ɠ���
obj3$reply()

# �uobj1�v�́uName�v�t�B�[���h��ύX���Ă݂�
obj3$setName ("����")
obj3$reply()

# �R�s�[���Ƃ́uobj1�v�́uName�v�t�B�[���h���ύX����Ă���
obj1$reply()

# �Q�Ƃł͂Ȃ��������쐬���đ��
obj4 <- obj1$copy()
obj4$reply()

# �uobj1�v�́uName�v�t�B�[���h��ύX���Ă݂�
obj4$setName ("�B�{")
obj4$reply()

# �R�s�[���Ƃ́uobj1�v�́uName�v�t�B�[���h�ɐV���ȕύX�͋y��ł��Ȃ�
obj1$reply()              








  ## ----- SECTION 220   ���{��e�L�X�g����͂���

# http://mecab.sourceforge.net/ ��� MeCab0.996���_�E�����[�h���ăC���X�g�[��
# http://rmecab.jp/wiki/index.php?RMeCab
#
install.packages ("RMeCab", repos = "http://rmecab.jp")
library (RMeCab)
res <- RMeCabC ("���т�H�ׂ�", 0)
unlist (res)

# ���p��͌��^�ɖ߂�
res <- RMeCabC ("���т�H�ׂ�", 1)
unlist (res)

# �t�H���_���̑S�e�L�X�g�����
res <- docDF ("data/doc", type=1, N=1 )
res

res <- Ngram ("yukiguni.txt", type = 1)
res


# RMeCab�̊֐��ꗗ
browseURL("http://rmecab.jp/wiki/index.php?RMeCabFunctions")



  ## ----- SECTION 221 Emacs �ł�R�̗��p


(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)




(require 'auto-complete)
(require 'auto-complete-config)    ; �K�{�ł͂Ȃ��ł����ꉞ
(global-auto-complete-mode t)

(require 'ess-site)
(setq ess-ask-for-ess-directory nil)
(setq ess-pre-run-hook
	'((lambda ()
	(setq default-process-coding-system '(sjis . sjis))
	)))
(defun ess:format-window-1 ()
	(split-window-horizontally)
	(other-window 1)
	(split-window)
	(other-window 1))
(add-hook 'ess-pre-run-hook 'ess:format-window-1)

(require 'popup)
(require 'ess-R-object-popup) 






  ## ----- SECTION 222  C����Ƃ̘A�g�ɂ���

## �����̃t�@�C�� simple.c  �𗘗p���ĉ�����
/* �����Ƃ��P���ȕ��@ simple.c */
  void foo(int *x, double *y, double *z)
{
  *z = *x + *y;
}


# R CMD SHLIB simple.c


 # R �Ŏ��s����
dyn.load ("simple.dll")
is.loaded ("foo")

simple <- function (x = 10, y = 3.14){
  .C ("foo", x = as.integer(x), xy = as.double(y), foo = as.double(0))$foo
}

(simple ())

dyn.unload ("simple.dll")


## �����̃t�@�C�� my_list.c  �𗘗p���ĉ�����
/* ���X�g���쐬���� my_list.c */
                                        #include <R.h>
                                        #include <Rdefines.h>
  SEXP myList (SEXP x, SEXP y, SEXP z){
    SEXP my_list , my_listnames;
    //���X�g�v�f�̖��O�Ƃ��镶����
    char *my_names[3] = {"string", "integer", "numeric"};
    int i, j = 0;
    //�v�f�ƂȂ�x�N�g����3�̃��X�g���`
    PROTECT(my_list = allocVector(VECSXP, 3)); j++;
    SET_VECTOR_ELT(my_list, 0, x);
    SET_VECTOR_ELT(my_list, 1, y);
    SET_VECTOR_ELT(my_list, 2, z);
    //���X�g�̗v�f����ݒ�
    PROTECT(my_listnames = allocVector(STRSXP, 3));j++;
    for(i = 0; i < 3; i++)
      SET_STRING_ELT(my_listnames, i, mkChar(my_names[i]));
    setAttrib(my_list, R_NamesSymbol, my_listnames);
    UNPROTECT (j);// �ی�̉���
    return my_list;
  }





# R CMD SHLIB my_list.c

# R�̑��ł̗��p
dyn.load("my_list.dll")
is.loaded ("myList")

x <- .Call ("myList", x = "�R�c", y = 10L, z = pi)
x

dyn.unload("my_list.dll")


## �����̃t�@�C�� df_make.c  �𗘗p���ĉ�����
/* �f�[�^�t���[���̍쐬 df_make.c */
#include <R.h>
#include <Rdefines.h>
  extern int utf8locale;//���P�[���𔻒f
SEXP dfMake(SEXP x, SEXP y, SEXP z){
  int pc=0;// PROTECT�X�^�b�N�̊Ǘ�
  SEXP df, varlabels, tmp, row_names;
  const char* xx = CHAR(STRING_ELT(x, 0));//������̕ϊ�
  const char* yy = CHAR(STRING_ELT(y, 0));
  const char* zz = CHAR(STRING_ELT(z, 0));
  PROTECT(df = allocVector(VECSXP, 2));// �x�N�g���v�f��2���� data.frame
  pc++;
  // data.frame�̑�1�x�N�g���i��j��3�̗v�f����Ȃ镶���x�N�g��
  SET_VECTOR_ELT(df, 0, allocVector(STRSXP, 3));
  SET_STRING_ELT(VECTOR_ELT(df,0), 0, mkCharCE(xx, (utf8locale)?CE_UTF8:CE_NATIVE));
  SET_STRING_ELT(VECTOR_ELT(df,0), 1, mkCharCE(yy, (utf8locale)?CE_UTF8:CE_NATIVE));
  SET_STRING_ELT(VECTOR_ELT(df,0), 2, mkCharCE(zz, (utf8locale)?CE_UTF8:CE_NATIVE));
  // data.frame�̑�2�x�N�g���i��j��3�̗v�f����Ȃ鐮���x�N�g��
  SET_VECTOR_ELT(df, 1, allocVector(INTSXP, 3));
  INTEGER(VECTOR_ELT(df,1))[0] = 10;
  INTEGER(VECTOR_ELT(df,1))[1] = 20;
  INTEGER(VECTOR_ELT(df,1))[2] = 30;
  PROTECT(varlabels = allocVector(STRSXP, 2));//data.frame�̗񖼂�p��
  pc++;
  SET_STRING_ELT(varlabels, 0, mkCharCE("Name", (utf8locale)?CE_UTF8:CE_NATIVE));
  SET_STRING_ELT(varlabels, 1, mkCharCE("Age", (utf8locale)?CE_UTF8:CE_NATIVE));
  //�I�u�W�F�N�g��data.frame�Ǝw��
  PROTECT(tmp = mkString("data.frame"));
  pc++;
  //�s����p�Ӂi�����ł͒P���ȘA�ԁj
  PROTECT(row_names = allocVector(STRSXP, 3));
  pc++;
  SET_STRING_ELT(row_names, 0, mkCharCE("1", (utf8locale)?CE_UTF8:CE_NATIVE));
  SET_STRING_ELT(row_names, 1, mkCharCE("2", (utf8locale)?CE_UTF8:CE_NATIVE));
  SET_STRING_ELT(row_names, 2, mkCharCE("3", (utf8locale)?CE_UTF8:CE_NATIVE));
  setAttrib(df, R_ClassSymbol, tmp);//�N���X�����̎w��
  setAttrib(df, R_NamesSymbol, varlabels);//�񖼂̐ݒ�
  setAttrib(df, R_RowNamesSymbol, row_names);//�s���̐ݒ�
  UNPROTECT(pc);//�v���e�N�g���܂Ƃ߂ĉ���
  return(df);
}



# R CMD SHLIB df_make.c

# R�̑��ł̗��p
dyn.load("df_make.dll")
is.loaded ("dfMake")

test <- function (x = "�R�c", y = "����", z = "����" ){
  tmp <- .Call ("dfMake", x, y, z)
  return (tmp)
}
x <- test()
x

dyn.unload ("df_make.dll")





  ## ----- SECTION 223   �uRcpp�v�p�b�P�[�W�ɂ���

install.packages ("Rcpp")
library (Rcpp)
install.packages ("inline")
library (inline)


 # �֐���`�𕶎���I�u�W�F�N�g�Ƃ��ĕۑ�
 # �P�ɍ��v��Ԃ������̃v���O����
defSum <- '
     int i, nx;
     double *rx = REAL (x), *rans;
     SEXP ans;
     nx = length (x);
     PROTECT (ans = allocVector (REALSXP, 1));
     rans = REAL (ans);
     for (i = 0; i < nx; i++) {
     rans [0] += rx [i];
     }
     UNPROTECT (1);
     return (ans);
     '
                                        # �R���p�C������
mySum <- cfunction (sig = signature (x = "numeric") , body = defSum)
x <- mySum (c (1.1, 1.2, 1.3))
x


## �����̃t�@�C�� RcppList.cpp  �𗘗p���ĉ�����
/* RcppList.cpp �\�[�X�t�@�C�� */
#include <Rcpp.h>
RcppExport SEXP test (SEXP x, SEXP y, SEXP z){
return Rcpp::List::create(Rcpp::Named("string") = x,
Rcpp::Named("integer") = y,
Rcpp::Named("numeric") = z);
}

�����̃t�@�C�� RcppDataFrame.cpp  �𗘗p���ĉ�����
/* RcppDataFrame.cpp �\�[�X�t�@�C�� */
#include "Rcpp.h"
using namespace Rcpp;
RcppExport SEXP dfMake2 (SEXP x, SEXP y, SEXP z){
CharacterVector cv = CharacterVector::create(as<std::string>(x),
as<std::string>(y),
as<std::string>(z));
IntegerVector nv = IntegerVector::create(10,20,30);
return DataFrame::create(Named("Name") = cv, Named ("Age") = nv,
Named("stringsAsFactors") = false );
}

## �����̃t�@�C�� Makevars.win  �𗘗p���ĉ�����
PKG_CXXFLAGS=$(shell Rscript -e "Rcpp:::CxxFlags()")
PKG_LIBS=$(shell Rscript -e "Rcpp:::LdFlags()")
CLINK_CPPFLAGS=$(shell Rscript -e "Rcpp:::Cxx0xFlags()")


fx <- cfunction (signature (x = "integer", y = "numeric" ) ,
                 body = '
     return wrap (as<int>(x) * as<double>(y)) ;
     ', Rcpp = TRUE, includes = "using namespace Rcpp;" )





  ## ----- SECTION 224

# ���x���m�F���邽�߃x���`�}�[�N�p�̃p�b�P�[�W�𓱓�
# install.packages ("rbenchmark")
library (rbenchmark)
# �x�N�g���̗v�f�����ׂđ����Z���邾���̊֐� (sum)
f <- function (x) {
  s <- 0.0
  for (y in x){
    s <- s + y
  }
}

# �o�C�g�R���p�C�����s���p�b�P�[�W
library (compiler)

# �֐��̃o�C�g�R���p�C����
fc <- cmpfun (f)

# ���K�������쐬��
z <- rnorm (10000)

# ���ꂼ������s���ăx���`�}�[�N�𑪂��Ă݂�
benchmark (
           f = f (z),
           fc = fc (z),
           replications = 10^(1:3),
           order = c ('replications', 'elapsed'))






  ## ----- SECTION 225

# install.packages ("simpleboot")
library (simpleboot)

# �K���}������p��
x <- rgamma (10000, 1)
# �u�[�g�X�g���b�v�@�Œ����l�̐M����Ԃ����߂�
system.time (
             xb <- one.boot (x, median, R = 1000)
             )


names (xb)

quantile (xb$t)



# ���񏈗���
library (parallel)
# ���񏈗��ɓK�p����֐����`
func <- function (){
  one.boot (x, median, R = 250)
}

# �܂����p���Ă���R���s���[�^�[�̃R�A���𒲂ׂ�
(mc <- detectCores ()) 

# system ("egrep \"^processor\\s:\\s[0-9]+$\" /proc/cpuinfo")# Linux �ŃR�A�����m�F������@
# �N���X�^�̏�����
cl <- makeCluster (mc)
# �N���X�^���Ƃ� boot ���C�u���������[�h
clusterEvalQ (cl, library (simpleboot))

# ��ƃX�y�[�X�̕ϐ����G�N�X�|�[�g
clusterExport (cl, "x")
system.time (
             xbc <- clusterCall (cl, func)
             )

# �����I�ɃN���X�^�̃��[�J�[�v���Z�X���I��
stopCluster (cl)
# �o�͂̃��X�g�͎l�̗v�f����Ȃ邪�A���̍ŏ��̗v�f�����m�F
names (xbc [[1]])

# ���ʓ_
quantile (c (xbc [[1]]$t, xbc [[2]]$t,xbc [[3]]$t, xbc [[4]]$t))






  ## ----- SECTION 226  �֐��̓���m�F

#install.packages ("RUnit")
library (RUnit)

# �����x�N�g���̗v�f�̊|���Z�����߂�֐��i�̂���j
myProd <- function (x) {
  tmp <- 0 # 0��Z�ɂȂ�̂ōŏI���ʂ͏��0
  for (i in x){
    tmp <- tmp * i
  }
  return (tmp)
}

# ����������
prod (1:10)

# �e�X�g���Ă݂�
checkEqualsNumeric ( myProd (1:10), 3628800)


# �؎���ێ��ɕϊ� # ������ tmp/runit.f2c.R ���Q��
f2c <- function (f) return (5/9 * f - 32) # �������� 5/9 * (f - 32)
## �e�X�g�֐�
## ---------------------
test.f2c <- function () {
  checkEquals (f2c(32), 0)     # ���s���ʂ����_�l�ƈقȂ�
   checkException (f2c ("xx")) # �Ӑ}�I�ɕ������n��
}
# ��O���̃��b�Z�[�W
test.errordemo <- function () {
  stop("�s���Ȍ��ʂł�")
}


# �e�X�g�p�̃t�H���_�ɒu���ăe�X�g�X�C�[�c�Ƃ��ēǂݍ���
testsuite.c2f <- defineTestSuite ("f2c",
     dirs = "/home/ishida/tmp")

# ���s����
testResult <- runTestSuite (testsuite.c2f)


# ���s���ʂ̕\��
printTextProtocol (testResult)


