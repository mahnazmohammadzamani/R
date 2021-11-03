my_magic_list <- function(){list(info="my own list",my_num_vector(), my_magic_matrix())}
a_list <- my_magic_list()
add_note <- function(x,note){x[length(x)+1] <- note 

names(x)[length(x)]<- "note"
return (x)}
add_note(x = a_list, note = "This is a magic list!")


