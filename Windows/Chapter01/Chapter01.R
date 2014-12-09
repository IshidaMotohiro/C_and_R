# ��2��    2014�N3��27��

############################################################
#                    ��P�� R����̊�b                    #
############################################################


  ## ----- SECTION 004  R�R���\�[���ƃX�N���v�g�̎��s
# �R���\�[���̃v�����v�g��ύX����
# ���݂̃v�����v�g���m�F����
options ("prompt")

# �f�t�H���g�̕\��
plot (1:10, 1:10,
main = "�v�����v�g�ύX�O")



# �v�����v�g��ύX����
op <- options (prompt = "ishida> ", continue  = "put+")

# �v�����v�g��ύX
plot (1:10, 1:10,
      main = "�v�����v�g�ύX��")


options(op) # ���Ƃɖ߂�

Sys.getenv("R_HISTSIZE")




## ----- SECTION 006  R�̊��ݒ�t�@�C��

## # �u.Renviron�v�̐ݒ�# �����t�@�C��dot.Renviron���Q�Ƃ��ĉ�����
## R_LIBS_USER=C:/Users/ishida/Documents/R/win-library/2.15
## R_LIBS_SITE=C:/Program Files/R/R-3.1.0/library


## # �u.Rprofile�v�̐ݒ�# �����t�@�C��dot.Rprofile���Q�Ƃ��ĉ�����
## options (repos="http://cran.md.tsukuba.ac.jp")
## setHook (packageEvent ("grDevices", "onLoad"),
##          function (...) grDevices::pdf.options (family="Japan1"))
## setHook (packageEvent("grDevices", "onLoad"),
##          function (...) grDevices::ps.options (family="Japan1"))

## .First <- function () {
##     tmp <- suppressWarnings (require ("fortunes", quietly = TRUE))
##     if (tmp) {
##               print (fortunes::fortune())
##              }
## }
## .Last <- function()
##     if (interactive()) try (savehistory (".Rhistory"))



as.data.frame(Sys.getenv())




  ## ----- SECTION 007  R�̃Z�b�V�����p�I�v�V�����̎w��
# �f�t�H���g�̕\����
LETTERS

# �\������ύX
options (width = 60)
# ���l�̕\����
pi

getOption ("digits")
# ���l�̕\��������ύX
options (digits = 16 )

# �w���\��
10^5
getOption ("scipen")
options (scipen = 1)
10^5 ; 10^6
options (scipen = 3)
10^7

# �N�����Ƀ��[�h����p�b�P�[�W
(x <- getOption ("defaultPackages"))

# �ulattice�v�p�b�P�[�W��ǉ�
options (defaultPackages = c (x, "lattice"))

# �f�t�H���g��cran�~���[��ݒ�
#  ����ɂ��C���X�g�[�����ɃT�[�o�[���w�肷��K�v���Ȃ��Ȃ�

options(repos = "http://cran.md.tsukuba.ac.jp")





  ## ----- SECTION 008 ��ƃt�H���_�̐ݒ�

getwd()
setwd(C:/workhome)




  ## ----- SECTION 009  ���p�������@�\�̌���
# �uchi�v�i�J�C�j�𕶎���̈ꕔ�Ɋ܂ފ֐���\������
apropos ("chi")
# �����umode�v�Ɂu�֐��v���w�肵�Č������ʂ��i��
apropos ("chi", mode = "function")
#�usimple.words�v�����ŕ�����v���w��
find ("^chi", simple.words = FALSE)




  ## ----- SECTION 011  �p�b�P�[�W�̃C���X�g�[��

options (repos = "http://cran.md.tsukuba.ac.jp")
install.packages ("�p�b�P�[�W")

install.packages ("�p�b�P�[�W", dependencies = TRUE)

pkg <- available.packages()
head (pkg [, 1])

# install.packages (pkg[,1])

.libPaths()

slib <- .libPaths()
# install.packages ("", lib = slibs[2])


install.packages("C:/Users/ishida/Documents/arm_1.6-01.02.zip", repos = NULL)

# �R�}���h�v�����v�g����
# C:\Users\ishida> R CMD INSTALL rgl_0.92.798.zip
# 

install.packages("ctv")
library (ctv)
install.views ("NaturalLanguageProcessing")
update.views ("NaturalLanguageProcessing")

# library ()

installed.packages ()

(.packages())

update.packages (checkBuilt = TRUE, ask = FALSE)

update.packages (ask = TRUE)

download.file("http://rmecab.jp/data.R", destfile = "data.R")



install.packages("devtools")
 # library (devtools)
 # install_github("rasmusab/pingr")
devtools::install <- github("rasmusab/pingr")






  ## ----- SECTION 012  �w���v�̗��p
# �����Ƃ���{�I�Ȏ��s���@
?chisq.test
# ��Ɠ�������
help ("chisq.test")
# �p�b�P�[�W�̏����݂�
help (package = "lattice")

library (help = "lattice")

# ���݂̃w���v�̕\�����@���m�F
getOption ("help_type")
# �o�͕��@���w�肵�ăw���v���Q��
help ("chisq.test", help_type = "text")  #RStudio�ł͖���
# �w���v�̕\�����@��ύX
options (help_type = "text")


getOption("help_type")
options()$help_type
options("help_type")



# Windows��R�̏ꍇ�A�f�X�N�g�b�v�̕W���ݒ�̃u���E�U�����p����܂�
getOption ("browser")

options (browser = "C:/Program Files/Mozilla Firefox/firefox")
options (browser = "C:/Users/ishida/AppData/Local/Google/Chrome/Application/chrome.exe")


help.search ("^chi")
help.search ("\\bchi")






  ## ----- SECTION 013 �r�j�G�b�g�i�ȈՃ}�j���A���j�̗��p
# ���ݓǂݍ���ł���p�b�P�[�W�ɗp�ӂ��ꂽ�r�j�G�b�g�ꗗ

vignette (all = FALSE)  

vignette (package = "grid")  

vignette ("rotated", package = "grid")


browseURL ("http://cran.md.tsukuba.ac.jp/",
     browser = "C:/Program Files (x86)/Mozilla Firefox/firefox")

demo ()
demo (package = .packages (all.available = TRUE))

demo (Japanese)





  ## ----- SECTION 014  R�ⓝ�v��͂Ɋ֌W������̎��W
# R �֘A�̃��[�����O���X�g����T��
RSiteSearch ("chisq.test")

# ���[�����O���X�g�̎�ނȂǂ��w��
RSiteSearch ( "bug", sortby = "date:late")





