faithful <- faithful %>% add_column(compared_to_median=ifelse (faithful[,1]>median(faithful[,1]),faithful[,4]<- "Greater",faithful[,4] <- "Smaller"))
faithful
add_median_variable <- function(df,j){
  m <- median(df[,j])
  numc <- ncol(df)
  num <- nrow(df)
  
  df <- df %>% add_column(compared_to_median=ifelse (df[,j]>m,df[,numc+1]<- "Greater",df[,numc+1] <- "Smaller"))
   return(df) 
  
}

head(add_median_variable(df = faithful, 1))
tail(add_median_variable(df = faithful, 2))

or 

add_median_variable <- function(df, j){
  med <- median(df[,j])
  compared_to_median <- c()
  for (item in df[,j]){
    if (item < med){
      compared_to_median = c(compared_to_median,"Smaller")
    }else{
      compared_to_median = c(compared_to_median,"Greater")
    }
    
  }
  df$compared_to_median <- compared_to_median
  
  return(df)
}
data(faithful)
head(add_median_variable(df = faithful, 1))
tail(add_median_variable(df = faithful, 2))
