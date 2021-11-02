seq = 0
Euler_exponential <- function(x,depth){
  for (i in 0:depth){
    seq <- seq + ((x^i) / (factorial(i)))
    print(seq)
               
  }
  return(seq)
}

Euler_exponential(5,12)
O(depth)