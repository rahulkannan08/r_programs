data(mtcars)


show_dashboard <- function(selected_cyl) {

    filtered_data = mtcars[mtcars$cyl == selected_cyl,];


    par( mfrow = c(2,2))

    barplot(filtered_data$mpg, filtered_data$wt, xlab="Millage", ylab="Weight", col="blue", main=paste(CYl = ", selected_cyl,"), border="red", pch=19)


# pie chart

gear <- table(filtered_data$gear)

pie(gear, main=paste("Gear distribution for cyl =(Cyl = ", selected_cyl, ")"))

# reset

par(mfrow = c(1,1))

#print

print(filtered_data)



}

repeat{

    cat("Enter the number of cylinders (4, 6, or 8) to filter the mtcars dataset, or 'exit' to quit:  ")

    selected_cyl <- as.numeric(readline("enter cyclinder number"))

    if(selected_cyl == 0){
        cat("exit")
        break;
    }else if (selected_cyl  %in% c(4,6,8)) {

       show_dashboard(selected_cyl)
    }
    else {
       cat("invalid")
    }
}