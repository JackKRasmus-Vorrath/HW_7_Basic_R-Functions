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