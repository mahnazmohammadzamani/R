library(ggplot2)
gen_shape <- function(){
  t <-  seq(1, (2*pi), by=0.1)
  x <- c()
  y <- c()
  
  for (i in t){
    f = 16*(sin(i)^3)
    x <- c(x,f)
  }
  for (i in t){
    f1 = 13 * cos(i) - 5 * cos(2*i) - 2 * cos(3*i) - cos(4*i)
    y <- c(y,f1)
  }
  dataframe <- data.frame(t,x,y)
  
  return(dataframe)
}
gen_shape()

gp <- ggplot(gen_shape(),aes(x, y))+ geom_polygon(fill = "red", colour = "grey50")
gp




library(testthat)
test_that("gen_shape() is working", {
  df <- gen_shape()
  expect_is(df, "data.frame")
  t <- seq(1, 2*pi, by=0.1)
  expect_equal(df$t, t)
  expect_equal(df$x, 16*sin(t)^3)
  expect_equal(df$y, 13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t))
})



##### second solution
gen_shape <- function() {
  df <- data.frame(t=seq(1, 2*pi, by=0.1) )
  df$x <- 16*sin(df$t)^3
  df$y <- 13*cos(df$t)-5*cos(2*df$t)-2*cos(3*df$t)-cos(4*df$t)
  df
}
gen_shape()
gp <- ggplot(gen_shape(),aes(x, y))+ geom_polygon()
gp
library(testthat)
test_that("gen_shape() is working", {
  df <- gen_shape()
  expect_is(df, "data.frame")
  t <- seq(1, 2*pi, by=0.1)
  expect_equal(df$t, t)
  expect_equal(df$x, 16*sin(t)^3)
  expect_equal(df$y, 13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t))
})
