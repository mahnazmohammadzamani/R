x <- c(4,3,8,9,5,1,2,7,6)
my_magic_matrix <- function(){
  matrix(x, nrow = 3, ncol = 3, byrow = FALSE)}
add_elements_to_matrix <- function(A, x, i, j){
  A[i,j] <- A[i,j]+x
  return (A)
}
mat <- my_magic_matrix()
add_elements_to_matrix(A = mat, x = 10, i = 2, j = 3)


