dot_prod <- function(a, b){
  d=0
  for (i in 1:length(a)){
    d <- d+a[i]*b[i]
  }
  return(d)
}
dot_prod(a = c(3,1,12,2,4), b = c(1,2,3,4,5))
dot_prod(a = c(-1,3), b = c(-3,-1))
or
dot_prod <- function(a, b){dot(a,b,d=TRUE)}
dot_prod(a = c(3,1,12,2,4), b = c(1,2,3,4,5))
dot_prod(a = c(-1,3), b = c(-3,-1))

