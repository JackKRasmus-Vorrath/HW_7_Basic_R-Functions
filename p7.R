p7 <- function(n){
  x <- numeric(n)
  for (i in 0:(n-1)){
    x[i+1] <- base10to7(i)
  }
  return(x)
}
