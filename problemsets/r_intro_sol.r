#$ problem_set r_intro

# A problem set that introduces to computing with vectors in R
#
# Author:  Sebastian Kranz
#          with help from Beat Classen
# Date:    16.04.2014
# License: GPL >= 2.0

#$ exercise 1 R as calculator #################################

#' a) Compute 123 + 257 by typing it below as R code. To run the code in your R console, go to the line with your text cursor and press Ctrl-Enter.

123+257
#< hint
cat("'Just type 123+257 where the R code shall be entered in part a).")
#>

#' b) The command
#s
x = 4
#e
#' assigns the value 4 to the **variable** x.
#' 
#' Assign the value 8 to the variable y
y = 8
#< hint
cat("Come on, you see above that x = 4 assigns the value 4 to the variable x. Do you have no idea how you could assign the value 8 to the variable y?")
#>

#' c) We can now calculate with these variables. Compute the product of x and y
x*y
#< hint
cat("a+b would show the sum of a variables a and b.")
#>

#<
give.award("CalculatoR")
#>

#$ exercise 2 Calculating with vectors  #################################

#' a) A nice feature of R is that you can also directly calculate with vectors.
#' The following command creates a vector of 3 numbers
#s
c(4,2,73)  
#e
#' b) Save in the variable u a vector of 4 different numbers
u = c(3,6,7,99)  
#< test
check.var("u",c(3,6,7,99),exists=TRUE, length=TRUE, class=TRUE)
#>
#' c) Add the command 3*u
3*u
#' The command simply multiples each element of u by 3.
#' 
#' d) Add 100 to each element of u
100+u
#' e) Generate another vector v of 4 different numbers and compute the sum of u and v
v = 1:4
#< test
check.var("v",1:4,exists=TRUE, length=TRUE, class=TRUE)
#>
u+v
#' f) Find out what the command u*v computes. Is it the scalar product of u and v, the outer product or the element-wise product?
#s
# Write down as answer "scalar product", "outer product", or "element-wise product"
#e
"element-wise product"


#<
give.award("Vector-CalculatoR")
#>

#$ exercise 3 Combining vectors ################################################

#' a) Consider the following commands that generate vectors
#s
x = 2:4
x
c(x, 10:13)
seq(5,7,by=0.5)
#e
#' By looking at the resulting vectors can you guess what the commands a:b, c and seq do? You can also use the R-help by pressing F1 when your text-input cursor is on the command name. 
#'
#' b) Using : create a vector that contains all integer numbers between 10 und 20, i.e. 10, 11, 12, ..., 19, 20.
10:20
#' c) Let y be a vector that contains all numbers between 0 and 1 with step size 0.01, i.e. 0, 0.01, 0.02, ..., 0.99, 1. Then show y.
y = seq(0,1,by=0.01) 
y
#< hint
cat('
Search in Google for "R generate a sequence of numbers" and check the shown mailing list answers or R help files for a command that can generate such sequences.
Otherwise use the ?seq command to find out, what parameters you can set and what they do.
')
#>
#' d) Let 'b' be a variable that contains all integer numbers from 0 to 10 and from 50 to 60 but not the numbers inbetween. Show b.
b = c(0:10, 50:60)  
b
#' e) Let z be a variable that shows the first 100 square numbers, i.e. 1,2,4,9,... Then show z
z = 1:100 * 1:100
#< hint
cat("There is a simple one-line formula to compute the 100 first square numbers. Just combine what you have learned in exercise 2 f) and in exercise 3 b).")
#>
z
#<
give.award("V[e]ctory!")
#>

#$ exercise 4 Summary functions ###############

#' a) We often want to compute some summary statistics of a vector. For example:
#s
x = 10:20
x
# Compute the sum of x
sum(x)
#e
#' b) Compute the mean of x.
mean(x)
#< hint
display("Search Google for something like 'R compute mean' to find the right function name.")
#>
#' c) Compute the standard deviation of x.
sd(x)
#< hint
display("Search Google for something like 'R compute standard deviation' to find the right function name.")
#>
#' d) Find the maximum value of all elements in x.
max(x)
#< hint
display("Search Google for something like 'R find maximum' to find the right function name.")
#>
#' e) Find the minimum value of all elements in x.
min(x)
#< hint
display("Search Google with 'R ...' to find the right function name.")
#>
#' f) Find the index of the element with the maximum value of all elements in x.
which.max(x)
#< hint
display("Search Google with 'R ...' to find the right function name.")
#>

#<
give.award("Summarizer")
#>

#$ exercise 5 Indexing ########################

#' a) The following command draws from the set of integer numbers between 1 and 1000, 10 random elements without replacement and stores them in x
#s
x = ((1:19)-10)^2
x
#' We can simply show a plot of x by typing
plot(x)
#' b) If we want to access the 3rd element of x, we  type
x[3]
#' We can get a subvector of the elements 5,6,7 by typing
x[5:7]
#e
#' c) Show the 9nth element of x
x[9]
#' d) Save in the variable z the elements 15,16,17,18 of x and show z
z = x[15:18]
z
#' e) Store in y the elements 4,2,9 (in this order) of x and show y
y = x[c(4,2,9)]
#< hint
cat('
You can use any vector as index, e.g. x[c(3,2,1)] would yield the elements 3,2,1 of x.')
#>
y


#$ exercise 6 logical operations ########################

#' a) R has logical values TRUE or FALSE
#s
# Comparisons yield TRUE or FALSE
5 > 3
1 == 2 # == checks equality

x = 10 # = assigns a value
x < 3
#' The operator & is a logical AND. It returns TRUE if BOTH conditions are TRUE
5 > 3 & x==2 
1+2 == 3 & 100 / 10 == x
#' The operator | is a logical OR. It returns TRUE if at least ONE of the two conditions is TRUE
5 > 3 | x==2 
1+2 == 3 | 100 / 10 == x
1+1 == 3 | 2+2 == 5
#' We can apply comparisons and logical operators also on vectors of the same length, which are then performed elementwise. We get a logical vector that contains TRUE and FALSE for each element of the vector
y = 10:20
y > 15
y %% 2 == 0 # is TRUE for those elements of y that are an even number
#e
#'
#' b) Return a logical vector that returns a TRUE for all elements of y that are <= 14.
y <= 14
#' c) Return a logical vector that returns a TRUE for all elements of y that are smaller equal 14 or bigger equal 18
y <= 14 | y >= 18
#< hint
display("Use the logical OR | to combine conditions of the form y <= ??? and y >= ???")
#>

#' d) Return a logical vector that returns a TRUE for all elements of y that are between 15 and 19 (including 15 and 19)
y >= 15 & y <= 19
#< hint
display("Use the logical AND & to combine conditions of the form y >= ??? and y <= ???")
#>
#' e) We can use logical vectors to index vectors. For example, to get all values of y that are strictly above 15, we can type
#s
y[y>15]
#e
#' f) Show all values of y that are strictly below 13
y[y<13]
#' g) Show all values of y that are between 14 and 18
y[y>=14 & y <= 18]
#' h) Note that we can also store a logical vector in a variable
#s
ind = y >=18
ind
y[ind]
#' the function which gets the index of all elements in which a logical vector is TRUE
which(ind)
#e
#<
give.award("it's only logical")
#>

#$ exercise 7 lists #####################################

#' Besides vectors we often encounter in R the following objects: list, data.frame and matrix. Let us briefly get used to lists here.
#' 
#' a) A list is a very flexible container that can contain variables of different kinds, like numbers, characters, vectors or lists itself
#s
x = list(a="Hi",b=1:3,c=list(y=3,z=4))
x
#' The elements of list often have a name. We can access an element of the list by its name or index in several ways:
x[[1]]
x[["a"]]
x$a
#e
#' b) Show the element b of x using the $ operator
x$b
#' c) Show the element c of x using its index, i.e. 3, and the [[...]] notation
x[[3]]
#' d) We can also simply add or change elements of an list
#s
x$d = "New element" 
x
#e
#' e) Add to x the element "e" with the value 100
x$e = 100
#' f) Note: if we index elements of a list with the [...] notation, we get a sublist which is itself a list.
#s
x[[1]] # yields the element a of x
x[1] # yields a list with one element $a
x[1:2] # yields a list with elements $a and $b
#e
#<
give.award("list-ener","You heard about lists...")
#>

#$ exercise 8 data frames ###########################################

#' a) A data frame is a list whose elements are vectors of the same length. A data frame is the common way to store data in R. 
#s
df = data.frame(a=5:7, b=4, c=c("A","B","C"), d = runif(3))
df
#e
#' Note that b is automatically changed to a column of 3 times 4.
#' 
#' b) If we use the $ notation on a data.frame, we get the corresponding column. Show the column 'a' of df 
df$a
#' c) If we want to get the element in the 2nd row in column a of df, we can have 4 different ways:
#s
# Subset data.frame like lists
df$a[2]
df[["a"]][2]

# Subset data.frame like a matrix
df[2,"a"]
df[2,1]
#e
#' d) Store in the variable x the rows 2 and 3 of column d in df and then show x
x = df$d[2:3]
x

#' We will learn much more about data frames in later problem sets.

#<
give.award("framing the data","R users simply love to frame their data.")
#>

#$ exercise 9 matrices ##########################################

#' a) A matrix works for a user similar like a data frame, but all its columns must be the same type (usually numbers). Internally, a matrix is stored differently than a data frame and some sort of computations can be performed much quicker.

# Generate a matrix with 3 rows and 2 columns
#s
m = matrix(1:6,nrow=3,ncol=2)
m

#' b) There are a lot of functions for matrices, e.g. taking the transpose
t(m)

#' c) Similar as with vectors we can do a lot of element wise computations on matrices
m * 3
#e
#' d) Add the matrix m to m
m+m
#' e)
#s
m*m # elementwise multiplication
t(m) %*% m # matrix multiplication
#e
#' 
#' We will learn more about computing with matrices in later problem sets.
#<
give.award("intro the matrix","Tired of only working with vectors? A matrix opens up a whole new dimension for you!")
#>