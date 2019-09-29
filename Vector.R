#VECTOR
#have only one kind of data - numeric, character, logical or integer
#c()--> concatenation

#numeric
x = c(2,3,4) #vector creation
x            #to print
class(x)

#character
y = c('a','b','c')  #characters in single or double quotes
y
class(y)

#logical
z = c(TRUE, TRUE, FALSE, FALSE) #true and false should be capital
z

#integers
a = c(1L, 2L, 3L)
a
class(a)
length(a)
typeof(a)
str(a)
attributes(a)
?attributes()

y = c(y, 'd') #to add another element d in y vector
y

#vectors from a sequence of numbers
series=1:10
series
seq(10)
?seq
seq(1,10,1.5) #from 1 to 10 with interval of 1.5


#missing vales in vector
#is.na
#anyNA
u = c('a','c',NA, 'd')
is.na(u)
anyNA(u)

#slicing a vector
#we can select one or many elements from a vector by square brackets []
series[4]
y[3] #3rd element of vector y

g = 20:50
g
length(g)
g[1:5] #elements from 1st to 5th
g[c(1,3)]
