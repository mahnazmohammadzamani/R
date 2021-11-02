product <- function(A,B){
  z <- matrix(0:0, nrow = nrow(A), ncol = ncol(B))
  if (ncol(A) == nrow(B)){
    for (i in 1:nrow(A)){
      for(j in 1:ncol(B)){
        for (k in 1:ncol(A)){
          z[i,j] <- z[i,j]+A[i,k]*B[k,j]
          
        }

      }
      
    }
    return(z)

  }else{
    print("non-conformable arrays")
  }
  
}
A <- matrix(c(1,2,3,4), nrow = 2)
B <- matrix(c(5,6,7,8), nrow = 2)
product(A,B)
A%*%B
O(nrow(A)*ncol(B)*ncol(A))

