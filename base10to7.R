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