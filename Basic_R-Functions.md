# Basic_R-Functions
Jack K. Rasmus-Vorrath  
June 23, 2017  

#Question 1a

##P7 Function

###This function prints the first 'n' numbers in base_7.

####Function Line 2: creates an empty numeric vector of length 'n'.
####Function Lines 3-4: iterate '0:n-1' times, passing input to the base10to7 function described below (which converts to a base_7 number) before inserting the result into the next available index of numeric vector 'x'.
####Function Line 6: returns the completed numeric vector 'x' after iteration.


```r
p7 <- function(n){
  x <- numeric(n)
  for (i in 0:(n-1)){
    x[i+1] <- base10to7(i)
  }
  return(x)
}
```

#Question 1b

##Base10to7 Function

###This function converts a scalar base_10 number to base_7.

####Function Lines 2-3: initialize variables 'i' and 'sum'.
####Function Lines 4: the while-loop iterates so long as the result of integer division is not 0.
####Function Line 5: adds the result of the product of '10^i' and modular division of 'x' by 7 to the variable 'sum', which is updated each iteration.
####Function Line 6: iteratively increments 'i'.
####Function Line 7: performs integer division of 'x' by 7, iteratively updating 'x'.
####Function Lines 8-9: add to the 'sum' returned by the while-loop the product of '10^i' and modular division of 'x' by 7, updating 'sum' before it is returned as the function output.


```r
base10to7 <- function(x){
  i = 0
  sum = 0
  while(x%/%7!=0){
    sum <- sum + ((x%%7)*(10^i))
    i = i+1
    x <- x%/%7
  }
  sum <- sum + ((x%%7)*(10^i))
  return(sum)
}
```

#Question 1c

##Base7to10 Function

###This function converts a scalar base_7 number to base_10, following the same program structure as function 'base10to7'.

####Function Lines 2-3: initialize variables 'i' and 'sum'.
####Function Lines 4: the while-loop iterates so long as the result of integer division is not 0.
####Function Line 5: adds the result of the product of '7^i' and modular division of 'y' by 10 to the variable 'sum', which is updated each iteration.
####Function Line 6: iteratively increments 'i'.
####Function Line 7: performs integer division of 'y' by 10, iteratively updating 'y'.
####Function Lines 8-9: add to the 'sum' returned by the while-loop the product of '7^i' and modular division of 'y' by 10, updating 'sum' before it is returned as the function output.


```r
base7to10 <- function(y){
  i = 0
  sum = 0
  while(y%/%10!=0){
    sum <- sum + ((y%%10)*(7^i))
    i = i+1
    y <- y%/%10
  }
  sum <- sum + ((y%%10)*(7^i))
  return(sum)
}
```

#Question 1d

##Base-conversion Function Generalizations

###The generalized functions below perform conversions between a scalar base_k and base_10, following the same program structures as the functions above.

##Pk Function 

###This function prints the first 'n' numbers in base_k.

####Function Line 2: creates an empty numeric vector of length 'n'.
####Function Lines 3-4: iterate '0:n-1' times, passing input to the base10tok function described below (which converts to a base_k number) before inserting the result into the next available index of numeric vector 'x'.
####Function Line 6: returns the completed numeric vector 'x' after iteration.


```r
pk <- function(n, k){
  x <- numeric(n)
  for (i in 0:(n-1)){
    x[i+1] <- base10tok(i, k)
  }
  return(x)
}
```

##Base10tok Function

###This function converts a scalar base_10 number to base_k.

####Function Lines 2-3: initialize variables 'i' and 'sum'.
####Function Lines 4: the while-loop iterates so long as the result of integer division is not 0.
####Function Line 5: adds the result of the product of '10^i' and modular division of 'x' by 'k' to the variable 'sum', which is updated each iteration.
####Function Line 6: iteratively increments 'i'.
####Function Line 7: performs integer division of 'x' by 'k', iteratively updating 'x'.
####Function Lines 8-9: add to the 'sum' returned by the while-loop the product of '10^i' and modular division of 'x' by 'k', updating 'sum' before it is returned as the function output.


```r
base10tok <- function(x, k){
  i = 0
  sum = 0
  while(x%/%k!=0){
    sum <- sum + ((x%%k)*(10^i))
    i = i+1
    x <- x%/%k
  }
  sum <- sum + ((x%%k)*(10^i))
  return(sum)
}
```

##Basekto10 Function

###This function converts a scalar base_k number to base_10, following the same program structure as function 'base10tok'.

####Function Lines 2-3: initialize variables 'i' and 'sum'.
####Function Lines 4: the while-loop iterates so long as the result of integer division is not 0.
####Function Line 5: adds the result of the product of 'k^i' and modular division of 'y' by 10 to the variable 'sum', which is updated each iteration.
####Function Line 6: iteratively increments 'i'.
####Function Line 7: performs integer division of 'y' by 10, iteratively updating 'y'.
####Function Lines 8-9: add to the 'sum' returned by the while-loop the product of 'k^i' and modular division of 'y' by 10, updating 'sum' before it is returned as the function output.


```r
basekto10 <- function(y, k){
  i = 0
  sum = 0
  while(y%/%10!=0){
    sum <- sum + ((y%%10)*(k^i))
    i = i+1
    y <- y%/%10
  }
  sum <- sum + ((y%%10)*(k^i))
  return(sum)
}
```

##Basically, in their use of modular/integer division and exponents, the generalized functions make especially clear the arithmetic intuitions behind number systems in different bases.

