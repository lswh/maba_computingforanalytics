##Note: Kindly run using Source because it does not do the interactive prompt when clicking Run only. 
##Thank you. 


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

testdata2 <- matrix(nrow=4,ncol=4)
testdata2[1,1]=0
testdata2[1,2]=2
testdata2[1,3]=1
testdata2[1,4]=3
testdata2[2,1]=-1
testdata2[2,2]=2
testdata2[2,3]=-1
testdata2[2,4]=2
testdata2[3,1]=4
testdata2[3,2]=-4
testdata2[3,3]=1
testdata2[3,4]=0
testdata2[4,1]=34
testdata2[4,2]=1
testdata2[4,3]=4
testdata2[4,4]=-1
det(testdata2)


#Get the dimension of the matrix first
SqMtrxDmnsn <-as.numeric(readline(prompt="Dimension of square matrix"))
inputmatrix <- matrix(0,nrow=SqMtrxDmnsn,ncol=SqMtrxDmnsn)

#Initializer that prompts user to enter the elements of the matrix
#Matrix Writer Function for input matrix
for(i in 1:SqMtrxDmnsn)
  {for(j in 1:SqMtrxDmnsn)
  {
  inputmatrix[i,j] <- as.numeric(readline(prompt="Enter element (L to R then Top to Bottom)"))  
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
  #Basketweave Method formula for a 3x3 Matrix: 
  tres <- x[1,1]*x[2,2]*x[3,3]+x[1,2]*x[2,3]*x[3,1]+x[1,3]*x[2,1]*x[3,2]-x[3,1]*x[2,2]*x[1,3]-x[3,2]*x[2,3]*x[1,1]-x[3,3]*x[2,1]*x[1,2]
  return(tres)
}

#Matrix by Cofactors Loop Method (I will always use row 1 for expansion to simplify the algo)
#If I still have time: Scale down until it's a 3x3 matrix to apply detrmnttres function from above and return the ultimate determinant
#If Murphy's law: I'll use det for matrices higher than 3x3 but improve this code before end of term. 
detrmntgeneral <- function(x) {
  totalna=0
  for(col in 1:ncol(x)) {
    submat <- x[-1,(-1*col)]
    print(submat)
    detexpansion<-x[1,col]*(-1^(1+col))*det(submat)
    totalna=detexpansion+totalna
    print(totalna)
    col=col+1
    return(totalna)
  }

}

detrmntgeneral(testdata2)


if (SqMtrxDmnsn==2) {
  detrmntdos(inputmatrix)
} else if (SqMtrxDmnsn==3) {
  detrmnttres(inputmatrix)
} else if (SqMtrxDmnsn>3) {
  detrmntgeneral(inputmatrix)
} else print("Hey, invalid matrix yan, buddy!")


#Define an R function that sorts a given vector in decreasing order. The output should be a vector of the same length. It should accept both numeric or character vectors.
#Provided given vectors
numericvector <- c(3,33,25,46,12,8,9,1,2)
charactervector <- c("Luke Skywalker","Han Solo", "Chewbacca", "Darth Vader", "Princess Leia", "Obi Wan Kenobi")

#Bubble Sort Algorithm
SortThisThing <- function(x) {
  
}

#Define an R function that accepts a Date (POSIXct) as argument and outputs the day of the week as characters. Use modulo operator.
FlyLikeaPosix <-as.numeric(readline(prompt="I am the oracle that tells you the day of the POSIXct. Enter the number here."))

# Origin is a Thursday - Jan 1 1970

PosixDayPredictor <- function(x) {
  days<-x/86400
  print(days)
  dayslang <- trunc(days)
  newx <- as.POSIXct(x,tz="UTC", origin = '1970-01-01')
  if(x<86400) {
    day<-"Thursday"
  } else if (x>86400&&x<172800) {
    day<-"Friday"
  } else if(x>604800&&dayslang%%8==0) {
    day<- "Friday"
  } else if(dayslang%%7==0){
    day<-"Thursday"
  } else if(dayslang%%6==0) {
    day<-"Wednesday"
  } else if(dayslang%%5==0) {
    day<-"Tuesday"
  } else if(dayslang%%4==0) {
    day<-"Monday"
  } else if(dayslang%%3==0) {
    day<-"Sunday"
  } else if(dayslang%%2==0) {
    day<-"Saturday"
  }
  print(day)
  print(newx)
  return(day)
}

PosixDayPredictor(FlyLikeaPosix)

#Required: Create a function to compute for your net pay at work.

#Create a function that accepts a vector and and integer n and returns nth highest number

#Create a function that computes the compound interest of an investment given the rate, time, and initial amount or principal.
Rate <-as.numeric(readline(prompt="Nominal interest rate in decimal"))
Time <-as.numeric(readline(prompt="Time of investment in years"))
Compounds <-as.numeric(readline(prompt="Compounding periods per year"))
Principal<-as.numeric(readline(prompt="Principal amount"))

CompoundInterest <- function(x,y,z,w) {
  Acompound <- w*(1+(x/z))^(y*z)
  cat("Accrued amount or compounded amount is ", Acompound)
  return(Acompound)
}

CompoundInterest(Rate,Time,Compounds,Principal)

#Create a function isPrime(n) that accepts an integer and outputs a Boolean value (TRUE or FALSE) depending whether the integer is a prime number or not.
