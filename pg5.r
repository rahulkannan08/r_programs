my_list<-list(numbers = 1:5,characters=c("a","b","c"),
              logicals=c(TRUE,FALSE,TRUE),
              matrix_data=matrix(1:6,nrow=2))
print("original list:")
print(my_list)
print("first element of 'numbers':")
print(my_list$numbers[1])
print("second element of 'characters':")
print(my_list$characters[2])
my_list$new_vector<-c(7,8,9)
print("modified list:")
print(my_list)
