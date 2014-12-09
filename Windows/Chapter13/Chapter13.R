
# ������  2014�N2��4��

############################################################
#               ��13�� ���ϗʃO���t�B�b�N�X                #
############################################################





  ## ----- SECTION 192  �����\���v���b�g����
# �^�C�^�j�b�N���̃f�[�^
str (Titanic)

mosaicplot (Titanic, main = "�^�C�^�j�b�N�̐����҃f�[�^",
     shade = TRUE )

# �j���ʐ�����
mosaicplot (~ Sex + Survived, data = Titanic,
     shade = TRUE )

# ����ɔN�������
mosaicplot (~ Sex + Age + Survived, data = Titanic,
     shade = TRUE )

# �J���[���w�肷��
mosaicplot (Titanic, main = "�^�C�^�j�b�N�̐����҃f�[�^",
     color = 2:3 )


# �l�����v���b�g
(tx <- Titanic [Class = "1st", , Age = "Adult", ])

fourfoldplot (tx)

# �A�փv���b�g
(ty <- HairEyeColor [,,"Female"])
assocplot (ty)




  ## ----- SECTION 193  �R�v���b�g�i�����t�U�z�}�j��`�悷��
summary (quakes)

# �A���ʂ������ϐ��Ƃ��A�p�l�����Ƃ̏d�Ȃ�����炵���v���b�g
coplot (lat ~ long | depth, overlap = 0.1, data = quakes)

# �����ϐ����ɂ����v���b�g
coplot (lat ~ long | depth * mag, data = quakes,
        xlab = "�����ϐ����ɂ����R�v���b�g")




  ## ----- SECTION 194 �q�[�g�}�b�v���쐬����
# ��p�Ԃ̔R��f�[�̍ŏ���4�̕ϐ��𒊏o�����s����쐬
x <- as.matrix (mtcars [, 1:4])
# �s�i��p�Ԃ̎�ʁj�ɂ��Ă̓f���h���O�������쐬����
hv <- heatmap (x, col = cm.colors (256), Colv = NA,
               xlab = "specification variables",
               main = "��p�Ԃ̔R��f�[�^")

# �����֐���ύX
distf <- function (dat) {
  dist (dat, method = "manhattan")
}

# �����Ƃ��āu�}���n�b�^���v���g��
hv <- heatmap (x, col = cm.colors (256), Colv = NA, 
               distfun = distf,
               xlab = "specification variables", 
               main = "��p�Ԃ̔R��f�[�^(manhattan)")



  ## ----- SECTION 195  3�����f�[�^���O���t������
# �j���[�W�[�����h�� Mt. Eden �̒n�`�f�[�^
x <- 10 * (1:nrow (volcano))
y <- 10 * (1:ncol (volcano))
z <- 2 * volcano   # ��⋭������
image (x, y, z, col = terrain.colors (100), # ��n���C���[�W�����J���[�𗘗p
       axes = FALSE)

# ���Ր}
persp(x, y, z, theta = 135, phi = 30, col = "green3", scale = FALSE,
      ltheta = -120, shade = 0.75, border = NA, box = FALSE)

# �������}
contour (x, y, z)






  ## ----- SECTION 196  �ulattice�v�O���t�B�b�N�X�Ƃ�

library (lattice)
# �ȉ��Ŏl�̃O���t�B�b�N�X�E�I�u�W�F�N�g���쐬
# �i�킲�ƂɃK�N�Ђ̒����ƕ����U�z�}�ɂ���
xy1 <- xyplot (Sepal.Length ~ Sepal.Width | Species, data = iris)

# �ϐ��̐������ƂɃp�l���𕪂���B�������p�l����1�s3��Ƃ���
xy2 <- xyplot (Sepal.Length + Sepal.Width ~ Petal.Length + Petal.Width | Species,
               layout = c(3, 1), data = iris)

# �X�P�[�����p�l�����ƂɕύX����
xy3 <- xyplot (Sepal.Length + Sepal.Width ~ Petal.Length + Petal.Width | Species, layout = c(3, 1),
     scales = "free", data = iris)

# �}���ǉ�
xy4 <- xyplot (Sepal.Length + Sepal.Width ~ Petal.Length + Petal.Width | Species, 
               scales = "free", auto.key = list (x = .5, y = .7), layout = c (2, 2), data = iris)

# �܂Ƃ߂�1���̃v���b�g�Ƀp�l���Ƃ��ĕ��ׂ�
# 2 �s 2 ��ɕ������ꂽ�v���b�g��� 1 �s�� 1 ��ڂɕ`��


print (xy1, split = c (1,1,2,2), more = TRUE)
print (xy2, split = c (1,2,2,2), more = TRUE)
print (xy3, split = c (2,1,2,2), more = TRUE)
print (xy4, split = c (2,2,2,2))



# �_�O���t
# �����Ɛ��ʂ��Ƃ̐����Ǝ��S�̖_�O���t
barchart (Class ~ Freq | Sex, data = as.data.frame (Titanic))

# ���킩��₷�������_�O���t  
bc.titanic <- barchart (Class ~ Freq | Sex + Age, # �v���b�g�̍쐬���ʂ���
                        data = as.data.frame (Titanic),
                        groups = Survived, stack = TRUE,
                        layout = c (4, 1),
                        auto.key = list (title = "������"),
                        scales = list (x = "free"))
# ���������O���t�E�I�u�W�F�N�g��`�悷��
bc.titanic

# �I�u�W�F�N�g���A�b�v�f�[�g���邱�ƂŃO���t��ύX�ł���
update (bc.titanic,
        panel = function (...) { # �p�l���֐����Ē�`����
          panel.grid (h = 0, v = -1) # �O���b�h����ǉ�����
          panel.barchart (...)
        } )



# �h�b�g�E�v���b�g
dotplot (variety ~ yield | year * site, data=barley)

dotplot (variety ~ yield | site, data = barley, groups = year,
         key = simpleKey (levels (barley$year), space = "right"),
         xlab = "�唞�̐��Y��", ylab = NULL, aspect = .3,
         layout = c (1,6))

# �֐������Ɂulattice�v�̃O���t�B�b�N�X�֐��𖄂ߍ���
myBarChart <- function (){
  barchart (Class ~ Freq | Sex, data = as.data.frame (Titanic))
  cat ("���ꂪ�֐������̍Ō�̍s\n")
}

myBarChart () # ���s���Ă��O���t�B�b�N�X�͍쐬����Ȃ�

# �uprint�v�֐��Ŗ����I�ɕ`��
myBarChart2 <- function (){
  myPlot <- barchart (Class ~ Freq | Sex, data = as.data.frame (Titanic))
  print (myPlot)
  cat ("���ꂪ�֐������̍Ō�̍s\n")
}
myBarChart2 () # ������͒����ɕ\�������


bwplot (voice.part ~ height, data = singer, xlab = "Height(inches)")

# �ϗʂ��Ƃɔ��Ђ��}���쐬����B���̍ہA�J�e�S����������
bwplot (Sepal.Length + Sepal.Width + Petal.Length + Petal.Width
               ~ Species, data = iris, outer = TRUE)








  ## ----- SECTION 197  3�����U�z�}���쐬����

# 3�����U�z�}
cloud (Sepal.Length ~ Petal.Length * Petal.Width | Species, data = iris,
       screen = list(x = -90, y = 70), distance = .4, zoom = .6)






  ## ----- SECTION 198  3�������ʓ����}���쐬����

# �j���[�W�[�����h�� Mt. Eden �̒n�`�f�[�^
# ��{�O���t�B�b�N�X�֐��̏ꍇ
filled.contour (volcano, color.palette = terrain.colors, asp = 1)

# �ulattice�v�ō�}
# library (lattice)
wireframe (volcano, shade = TRUE)





  ## ----- SECTION 199  �uggplot2�v�O���t�B�b�N�X�Ƃ�

# �p�b�P�[�W���C���X�g�[��
# install.packages ("ggplot2")
library (ggplot2)

# �f�t�H���g�����p����uqplot�v
data (diamonds)
qplot (carat, price, data = diamonds)

# ����������ǉ�����
qplot (carat, price, data = diamonds,
       geom = c ("point","smooth"), method = "lm")

# ���Ђ��}
qplot (color, carat, geom = "boxplot", data = diamonds)

# �q�X�g�O����
qplot (carat, geom = "histogram", binwidth = .5, data = diamonds)

# �_�O���t
qplot (carat, geom = "bar", binwidth = .5, data = diamonds)

# �uggplot�v�֐��ɂ��}�b�s���O
p1 <- ggplot (diamonds, aes (x = carat, y = price, color = cut))
# �܂��`��ł��Ȃ�
p1
### �G���[�F No layers in plot

# ���C���[��ǉ����ĕ`��
p1 + geom_point()# p1 + layer (geom = "point")�ɓ���

# �ʂ̕`��
p2 <- ggplot (diamonds, aes (carat))
p2 + stat_density() # p2 + layer(stat = "density")�ɓ���


# �t�@�Z�b�g���g���Đ������Ƃɕ���
p2 + geom_density() + facet_wrap(~cut)

# �v���b�g�𕪂����ɐ��������
ggplot (diamonds, aes (price, fill = cut)) + geom_density (alpha = 0.2)


# ���x���̒ǉ�
p1 + geom_point() + labs (title = "���C���^�C�g��", x = "X��", y = "Y��")

# �E�B���h�E�ɕ\������Ă���O���t�B�b�N�X��PDF�ŕۑ�
ggsave (file = "ggplot2.pdf")


library(help = "ggplot2")



  ## ----- SECTION 200  �urgl�v�p�b�P�[�W�ɂ��RD�O���t�B�b�N�X
install.packages ("rgl")
library (rgl)

open3d () # RGL�f�t�H���g�̍��p�����[�^�𗘗p
x <- sort (rnorm (1000))
y <- rnorm (1000)
z <- rnorm (1000) + atan2 (x,y)
# �RD�U�z�}
plot3d (x, y, z)

# �ΎR
z <- 2 * volcano # �傫�������֒�����
x <- 10 * (1:nrow (z)) # 10 meter spacing (S to N)
y <- 10 * (1:ncol (z)) # 10 meter spacing (E to W)
zlim <- range (y)
zlen <- zlim [2] - zlim [1] + 1
colorlut <- terrain.colors (zlen) # ��n���̃J���[�𗘗p
col <- colorlut [ z - zlim [1] + 1 ]

open3d () # RGL�f�t�H���g�̍��p�����[�^�𗘗p

# �RD�����}
surface3d (x, y, z, color = col, back = "lines")

