#Define an R function that removes NA values from a vector.
walana <- function(a) {
  return(a[!is.na(a)])}
testdata <- c(NA,7,22,3,2,15,67,9,NA,NA)
walana(testdata)
print(testdata)


#Define an R function that computes the factorial of given an integer argument. The output should be a vector of length 1.
inputtest<-as.numeric(readline(prompt="Gimme your factorial!"))

fctr <- function(input) {
  x=1
  factorial=input
  
  while(x<input) {
    factorial <- factorial*x
    x=x+1}
  return(factorial)
}

fctr(inputtest)
print(fctr(inputtest))

#Define an R function that computes the determinant of a given matrix. The output should be a vector of length 1.

##Note: Sir Elmer, please Source this, it does not do the interactive prompt when clicking Run only Thank you. 

#Test variables so I can check my computation
testdata <- matrix(nrow = 3, ncol = 3)
testdata

testdata[1,1]=0
testdata[1,2]=2
testdata[1,3]=1
testdata[2,1]=3
testdata[2,2]=-1
testdata[2,3]=2
testdata[3,1]=4
testdata[3,2]=-4
testdata[3,3]=1
print(det(testdata))


#Get the dimension of the matrix first
SqMtrxDmnsn <-as.numeric(readline(prompt="Dimension of square matrix"))

inputmatrix <- matrix(0,nrow=SqMtrxDmnsn,ncol=SqMtrxDmnsn)
#Initializer that prompts user to enter the elements of the matrix
#Matrix Writer Function for input matrix
for(i in 1:SqMtrxDmnsn)
  {for(j in 1:SqMtrxDmnsn)
  {
  inputmatrix[i,j] <- as.numeric(readline(prompt="Enter element (left to right first from top to bottom row 1,1 then 1,2... 1,n, 2,1... 2,n)"))  
  j=j+1
  }
  i=i+1
  }

detrmntdos <- function(x) {
  #Basic determinant formula
  dos<-x[1,1]*x[2,2]-x[1,2]*x[2,1]
  return(dos)
} 

detrmnttres <- function(x) {
  #Basketweave Method formula: 
  tres <- x[1,1]*x[2,2]*x[3,3]+x[1,2]*x[2,3]*x[3,1]+x[1,3]*x[2,1]*x[3,2]-x[3,1]*x[2,2]*x[1,3]-x[3,2]*x[2,3]*x[1,1]-x[3,3]*x[2,1]*x[1,2]
  return(tres)
}

detrmntgeneral <- function(x) {
  return(det(x))
}


#Checker of my calculations
det(x)


if (SqMtrxDmnsn==2) {
  detrmntdos(inputmatrix)
} else if (SqMtrxDmnsn==3) {
  detrmnttres(inputmatrix)
} else if (SqMtrxDmnsn>3) {
  detrmntgeneral(inputmatrix)
} else print("Hey, invalid matrix yan, buddy!")




#Define an R function that sorts a given vector in decreasing order. The output should be a vector of the same length. It should accept both numeric or character vectors.

#Define an R function that accepts a Date (POSIXct) as argument and outputs the day of the week as characters. Use modulo operator.

#Create a function to compute for your net pay at work.

#Create a function that accepts a vector and and integer n and returns nth highest number

#Create a function that computes the compound interest of an investment given the rate, time, and initial amount or principal.

#Create a function isPrime(n) that accepts an integer and outputs a Boolean value (TRUE or FALSE) depending whether the integer is a prime number or not.
