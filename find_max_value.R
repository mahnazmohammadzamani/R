find_max_value <- function(x){
  len <- length(x)
  max_value <- 0
  max_value_position <- 0
  for (i in 1:(len-1)){
    if (x[i]> x[i+1]){
      max_value <- x[i]
      max_value_position <- i
    }
  }
  
  lst <- list(max_value = max_value, max_value_position =max_value_position)
  return(lst)
}

x<-c(1,2,3,56,4,5)
find_max_value(x)

x<-c(1,2,3,56,4,56,5,15,128)
find_max_value(x)

O(n)

find_max_value_2 <- function(x){
  len <- length(x)
  for (i in 1:(len-1)){
    max_value <- (-1)*min(-x[i],-x[i+1])
  }
  return(max_value)

}
find_max_value_2(x)

