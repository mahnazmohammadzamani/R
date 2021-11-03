analyze_columns <- function(df, j){
  n <- names(df)
  

  analyze_columns <- list(c(mean=mean(df[,j[1]]),median=median(df[,j[1]]),sd=sd(df[,j[1]])),
             c(mean=mean(df[,j[2]]),median=median(df[,j[2]]),sd=sd(df[,j[2]])),
             correlation_matrix= matrix(cor(df[j]),nrow=2,dimnames = list(c(n[1],n[2]), c(n[1],n[2]))))
  names(analyze_columns) <- c(n[j[1]],n[j[2]],"correlation_matrix")
            
             
return(analyze_columns)
}

analyze_columns(df = iris, c(1,3))

analyze_columns(df = faithful, 1:2)



