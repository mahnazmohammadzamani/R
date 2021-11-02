a = 1
factorial <- function(n){
  for (i in 1:n){
    a = a * i
  }
  return(a)
}
factorial(6)
O(n)

factorial1 <- function(n){
    result <- sqrt(2*pi*n)*(n/exp(1))^n
    return(result)
}
factorial1(6)
