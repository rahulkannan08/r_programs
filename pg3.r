emp_data<- data.frame(
  emp_name=c("Gowtham","Janani","Kannan","Babu","Ganeshan"),
  emp_age=c(25,30,35,40,47),
  emp_sal=c(50000,60000,70000,20000,30000),
  emp_dept=c("hr","it","finance","hr","it"),
  emp_exp=c(2,5,10,15,20)
)
print("Employee Data Frame:")
print(emp_data)
print("Summary of Employee Data Frame:")
print(summary(emp_data))
new_emp <- data.frame(emp_name = "sabari", emp_age = 28, emp_sal = 75000, emp_dept = "it", emp_exp = 8)
emp_data <- rbind(emp_data, new_emp)

new_cl <- data.frame(emp_per = c (1))

emp_data <- cbind(emp_data, new_cl)

cat("\n\nEmployee database after addition:\n\n")
print(emp_data)
choice <- readline(prompt = "Wanna delete any employee record? (y/n): ")
if (choice == 'y') {
  del_emp <- readline(prompt = "Enter name of employee to delete: ")
  il <- which(emp_data$emp_name == del_emp)
  
  if (length(il) > 0) {
    emp_data <- emp_data[-il, ]
    print("Employee deleted successfully.")
    cat("\n\nUpdated Employee Data Frame:\n")
    print(emp_data)
  } else {
    print("Employee not found. No records deleted.")
  }
}

print("Summary of Updated Employee Data Frame:")
print(summary(emp_data))
