#Data Structures
#Create bookmark by #text----

#Vectors---- #one dimensional with single datatype
v1 = c('A', 'B','C')   #create a vector
v1   #print the vector
class(v1)  #print the class of vector
?class

(v2 = c(1,2,3)) #using round bracket, create vector & print
v2
class(v2)
(x = c(1,2,'a')) #converts 1 & 2 also to character

(v3 = c(TRUE, FALSE, TRUE))
class(v3)
V3a <- c(T,F,T) #TRUE - T, FALSE-F
class(v3a)
?c
(v4 = 100:200)
length(v4)
v4
v5 = seq(1,10,2)
v4; v5  #two commands seperated by semicolon
v4
v4[-c(1,3,4)]  #exclued postion 1,3,4
v4[-c(1,3,4,50:60)] #exclued postion 1,3,4 and 50 to 60
v4[v4 > 150] #list only values > 150
v7 = c('A','C')
v1
v1[!v1 %in% v7]  #find values in vector v1 but not in v7
v1
v1[v1 %in% v7] #find values present in vector v1 and v7 both
v7
v7[!v7 %in% v1]  #find values in vector v7 but not in v1

v1['A']  #wrong/ error
v1[1]  #extract by position
v1
v8 = 1:10
v8
names(v8)
LETTERS[1:10] #capital letters
letters[1:15] #small letters
LETTERS[10:1] #capital letters in descending order
names(v8) = LETTERS[1:10]
v8  #see headings with capital letters
v8['B']  #filter by column name
v8[c('B','F')]
v8[2:8] #by position also

month.abb[1:5]

str(v8)
?str #compactly display internal structure of object
str(v1)
class(v8)
class(v1)

#sample (random numbers)
set.seed(1234)  #will set pattern
sample(1:15)    #repeat the same pattern
?sample 

gender = c('M','F')
gender
sample(x=gender)
x1 = sample(x=gender, size=10, replace=T)
x1
table(x1)
#60% female should be there
x2 = sample(x=gender, size=100, replace=T, prob=c(.4,.6))
x2
table(x2)

y = c('MBA','BBA')
x2 = sample(x=y, size=1000, replace=T, prob=c(.6,.4))
x2
table(x2)

#Matrix ----------------------------------------
#2-D, rows and columns, single datatype ie number, character

?matrix
1:24  #seq of values
(matrix1 = matrix(1:24, ncol=6, byrow=T)) #fill row-wise
(matrix1 = matrix(1:24, ncol=6, byrow=F)) #fill col-wise
(matrix1 = matrix(1:24, nrow=6, byrow=F))
length(1:24)
matrix1[,1]  #print first column
matrix1[1,]  #print first row
matrix1[2:4,3:4]  #2 to 4th rows, 3 to 4 column
matrix1[2,3]  #element at particular position
matrix1

# fill the values byrow not bycol
(matrix2 = matrix(1:24,ncol=4, byrow=TRUE))
#give names to columns and rows
rn = paste('R',1:6, sep='-')
cn = paste('C',1:4, sep='-')
?paste
cn;rn
dimnames(matrix2) = list(c(rn), c(cn))
?list
matrix2
matrix2['R-1',]
matrix2[,'C-1']

#rn = paste('R',1:6, sep=' ')
#cn = paste('C',1:4, sep=' ')
#dimnames(matrix2) = list(c(rn), c(cn))
#matrix2

#rn = paste(LETTERS[1:6])
#cn = paste(LETTERS[1:4])
#dimnames(matrix2) = list(c(rn), c(cn))
#matrix2

#rn = paste(1:6)
#cn = paste(1:4)
#dimnames(matrix2) = list(c(rn), c(cn))
#matrix2

matrix1
dimnames(matrix1) = list(c(paste('R',1:4, sep='_')), c(paste('C',1:6,sep='')))
matrix1

#summary on Matrixes
matrix1
colSums(matrix1)
rowSums(matrix1)
rowMeans(matrix1)
colMeans(matrix1)
colSums(matrix1[,c(1,3)]) #sum of column 1 & 3
matrix1[seq(1,6,2),] #comma after seq coz we want all columns
rowSums(matrix1[seq(1,6,2),]) #sum of alternate rows


#Dataframe----
#rollno, name, course, dept

rollno=c(1,2,3,4)
name=c('Rohit','Lalit', 'Hitesh', 'Priya')
course=c('MBA','BBA','MCA', 'MBA')
dept=c('Dept1','Dept1','Dept2', 'Dept3')
gender = c('M', 'M', 'M', 'F')
grades = c('A','B','C','F')

rnorm(n=10, mean=50, sd=10)  #normal distributed,10 nos, mean, stddev
?rnorm #random normal
floor(12.67)  #remove decimals #lower-value
ceiling(12.1) #higher-value
round(12.4)
round(12.7)

marks=floor(rnorm(4,50,10))
students = data.frame(rollno, name, course, dept, marks, gender, grades)
students
class(students)
str(students)
summary(students)  

?factor

df = students  # save as another Dataframe
#df = fix(df)  #edit DF: small data only
df
str(df)
class(df)
summary(df)

#basic summary
table(df$gender) #how many in which gender 
table(df$course) #how many in which course
table(df$course,df$gender)
#more later 

#types of scale
#nominal, ordinal, interval, ratio

# Factors
str(df)
df
#factor is a category in R
df[1:2,]  # first 2 rows, all columns
df[,1:3]  # 1 to 3 columns, all rows

#names should be character
df$name = as.character(df$name)
str(df)  #see the structure now

df[df$gender =='M', ]
df[df$gender =='M' & df$marks >50, ]
#list all students from MBA and BBA
df[df$course == c('MBA','BBA'), ]

#grades can be ordered
df$grades = factor(df$grades, ordered=T, levels=c('A','B','C','D','E','F'))
str(df)
df$grades
table(df$grades)  #see the order of display
#reverse the order : A is highest level
df$grades = factor(df$grades, ordered=T, levels=c('F','E','D','C','B','A'))
df$grades
table(df$grades) # order of display

#gender should not be ordered
df$gender = factor(df$gender, ordered=F, levels=c('M','F'))
df$gender

table(df$course,df$gender)

#filter data
df[df$dept == 'Dept1',]
df[df$marks >= 50,]

