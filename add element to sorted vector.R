add_element_to_sorted_vector <- function(v,x){
  v <- c(v,x)
  len <- length(v)
  a = 0
  for (i in 1:len){
    for (j in 1:len-1){
      if (v[i] < v[j+1]){
        a <- v[i]
        v[i] <- v[j+1]
        v[j+1] <- a
        
      }
    }
  }

  return(v)

}
v<-c(1:4,6)
x<-5
add_element_to_sorted_vector(v,x)
O(n,m)
