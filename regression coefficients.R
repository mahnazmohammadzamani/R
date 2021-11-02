regression <- function(y,X){
  betahat <- solve(t(X) %*% X)%*% (t(X) %*% y)
  betahat <- 
  return_obj <- list(call = match.call(), Coefficients = betahat )
  return(return_obj)
}
data = iris
X <- model.matrix(Petal.Length~Species, data)
m <- data[all.vars(Petal.Length~Species)[1]]
y <- data.matrix(m)
regression(y,X)

#test
lm(y~X)
lm(Petal.Length~Species, data = iris)

O(m^3)

