Binary_1s <- function(X){
  len = length(X)
  c = 0
  for (i in 1:len){
    if(X[i] == 1){
      c = c+1
    }
    
  }
  return(c)
}

X <- matrix(c(1,0,1,0,1,0,0,1,1,1,0,0,0,0,1),nrow = 3)
Binary_1s(X)

O(nrow(X)*ncol(X))
