#Define an R function that removes NA values from a vector.
walana <- function(a) {
  return(a[!is.na(a)])}
testdata <- c(NA,7,22,3,2,15,67,9,NA,NA)
walana(testdata)


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

#Define an R function that computes the determinant of a given matrix. The output should be a vector of length 1.
testdata <- matrix(1:9, nrow = 3, ncol = 3)
testdata
det(testdata)

detrmnt <- function(x) {
  
} 


#Define an R function that sorts a given vector in decreasing order. The output should be a vector of the same length. It should accept both numeric or character vectors.

#Define an R function that accepts a Date (POSIXct) as argument and outputs the day of the week as characters. Use modulo operator.

#Create a function to compute for your net pay at work.

#Create a function that accepts a vector and and integer n and returns nth highest number

#Create a function that computes the compound interest of an investment given the rate, time, and initial amount or principal.

#Create a function isPrime(n) that accepts an integer and outputs a Boolean value (TRUE or FALSE) depending whether the integer is a prime number or not.
