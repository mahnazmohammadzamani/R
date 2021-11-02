
f <- function(n) {

  1/factorial(n) 
      
}

approx_e <- function(N){
  sum(f(seq(0, N, by=1)))
}
approx_e(N = 4)

