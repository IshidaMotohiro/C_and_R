# k�؎���ێ��ɕϊ�
f2c <- function(f) return (5/9 * f - 32)  # �������� # 5/9 * (f - 32)

## �e�X�g�֐�
## ---------------------

test.f2c <- function() {
  checkEquals(f2c(32), 0)
   ## �������^���Ă݂�
  checkException (f2c ("xx"))
}


test.errordemo <- function() {
  stop("�s���Ȉ����ł�")
}
