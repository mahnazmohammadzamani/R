sort_head <- function(df,var.name,n){
head(df[order(df[,var.name],decreasing =TRUE),],n)
}

sort_head(df=iris,var.name="Petal.Length", n=5)

