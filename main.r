# Objects in R - Numeric, Integer, Logical, Complex, Character.---------------------------->

# Numeric and Integer-------->
x = 5.5
print(x)
print(class(x))
print(typeof(x))
print(is.numeric(x))
print(as.integer(x))

y = 10
print(is.integer(y))
y = as.integer(y)
print(is.integer(y))

# Complex--------------------->
b = 1+2i
print(is.complex(b))
# sqrt(-1) #--->Give error
print(sqrt(-1+0i))

# Logical---------------------->
x1 = 10
y1 = 10
print(x1>y1)
print(x1<y1)
print(x1==y1)
print(x1>=y1)
print(x1<=y1)

# Character-------------------->
x2 = "abc"
print(is.character(x2))
char = character(2)
char[1] = "hello"
char[2] = "sir"
print(char)
print(is.character(char))

# Data Types in R - Vectors, Lists, Matrices, Data Frames, Factors.------------------------------>

# Vectors - store same type of data---------->
print(c(2,3,4))
print(class(c(2,3,4)))
print(class(c))
print(length(c(2,3,4)))

# Arithmetic in vectors
a = c(1,2,3,4)
b = c(5,6,7,8)
add = a+b
sub = a-b
mul = a*b
div = b/a
print(add)
print(sub)
print(mul)
print(div)

# Want to access value of vector
d = c(1:10)
print(d)
print(d[2]) # indexing start from 1
print(d[-5]) # It will remove 5 for temporary
print(d)
print(d[3:5])
print(c(3:5,10))

# Lists - It can store different data type---------->

a = c(2,3,4)
b = c("a","b","c")
d = c(TRUE,FALSE)
print(list(a,b,d))
print(typeof(list(a,b,d)))

# Indexing
l = list(a,b,d)
print(l[1])
print(str(l[1]))  # str - structure
print(l[2])
print(str(l[2]))
print(l[3])
print(str(l[3]))

print(l[[1]][2])  # It will extract element in a element
print(l[[2]][3])
print(l[[3]][1])

# Want to change a member in a list
l[[2]][3] = "xy"
print(l[2])

# Method 2
l = list(a = c(7,8,9),b = c("mn","op"))
print(l)
print(l$a)
print(l$b)
print(l$a[2])
print(l$b[1])

# Matrices ----------------------->

m = matrix(c(1,4,7,8),nrow = 2,ncol = 2) #------->arrange in column wise
print(m)
n = matrix(c(1,4,7,8),nrow = 2,ncol = 2,byrow = T) #------->arrange in row wise
print(n)

# Indexing
print(m[2,1]) #-->[row,column]
print(m[,1])
print(m[2,])

# Add new element
m = cbind(m,c(9,6)) #--->cbind - column binding
print(m)
m = rbind(m,c(2,3,5)) #--->rbind - row binding
print(m)

# Want to give names of rows and columns
dimnames(m) = list(c("r1","r2","r3"),c("c1","c2","c3"))
print(m)

# Taking transpose of a matrix
print(t(m))

# Factors---------------------->

y = factor(c("first","second","first","third"))
print(y)

# Indexing
print(y[1:3])

# Want to add new level
levels(y) = c(levels(y),"fourth")
print(y)

# Want to add new element in a factor
y[5] = "fourth" # ---> You cannot add any other value which is not given in levels.
print(y)

# DataFrames----------------------->

x = data.frame("c1" = c(1,2), "name" = c("Jayesh","Rathi"))
print(x)
print(colnames(x))
print(rownames(x))
print(str(x))

# Change row name
rownames(x) = c("first","second")
print(x)

# Indexing
print(x[1])
print(x[2])
print(x[,1])
print(x[,2])
print(x[1,2])

# cbind and rbind is also applicable

# Basic string manipulation-------------------------------------------------->

a = "Hello Sir"
print(nchar(a)) #---->give length of character
print(toupper(a)) #--->all letters will uppercase
print(tolower(a)) #--->all letters will lowercase
print(casefold(a,upper = T)) #--->all letters will uppercase/lowercase depend on T/F
print(chartr("e","o",a)) #--->Replace any word
print(abbreviate(a)) #--->It will create abbreviation of any character
print(substr(a,2,5)) #--->(character,start,end)

# Use of lapply() and sapply()------------------------------------------------------>
data("iris")
fun = lapply(iris, mean)
print(fun)

fun1 = sapply(iris,mean,simplify = T)
print(fun1)

# Use of union(),intersect(),setdiff(),setequal(),is.element(),%in%,sort()-------------------------->

s1 = c("Hello","World")
s2 = c("Hello","Folks")
s3 = c("hello","world")

print(union(s1,s2))
print(union(s1,s3))

print(intersect(s1,s2))

print(setdiff(s1,s3))
print(setdiff(s1,s2))

print(setequal(s1,s2))

s4 = c("today","is","a","good","day")
a = "is"
print(is.element(a,s4))
#         or
print(a %in% s4)

print(sort(s4))