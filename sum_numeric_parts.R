my_magic_list <- list(info="my own list",my_num_vector(), my_magic_matrix())
sum_numeric_parts <- function(x){
  num <- as.numeric(unlist(x))
  sum(na.omit(num))
  
  
}

sum_numeric_parts(x = my_magic_list)
sum_numeric_parts(x = a_list[2])