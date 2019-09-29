# comment to explain your file
mtcars #press (ctrl+enter) to execute
?mtcars
?mean
class(mtcars) #to know data structure
summary(mtcars) #summary of data
str(mtcars) #shows structure of data
?structure
table(mtcars$gear) #to find gears of each car
table(mtcars$carb)
table(mtcars$cyl,mtcars$gear) # console --> 4 cyl cars with 3 gears = 1
table(mtcars$cyl,mtcars$gear, dnn=c("cyl","gear")) #to see col & row name

