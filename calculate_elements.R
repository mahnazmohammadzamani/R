x <- c(4,3,8,9,5,1,2,7,6)
my_magic_matrix <- function(){
  matrix(x, nrow = 3, ncol = 3, byrow = FALSE)}
calculate_elements <- function(A){
  a=nrow(A)
  b=ncol(A)
  c=a*b
  return (c)}
mat <- my_magic_matrix()
new_mat <- cbind(mat, mat)
calculate_elements(A = new_mat)
