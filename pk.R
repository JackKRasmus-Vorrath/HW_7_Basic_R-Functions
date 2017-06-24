pk <- function(n, k){
  x <- numeric(n)
  for (i in 0:(n-1)){
    x[i+1] <- base10tok(i, k)
  }
  return(x)
}