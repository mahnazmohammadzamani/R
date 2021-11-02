scalar_product <- function(x,y){
  prod <- 0
  lenx <- length(x)
  leny <- length(y)
  for (i in 1:lenx){
      prod <- prod+x[i]*y[i]
    }
  return(prod)
}
x<-1:4
y<-5:8
scalar_product(x,y)

O(n)

print(x%???%y)
