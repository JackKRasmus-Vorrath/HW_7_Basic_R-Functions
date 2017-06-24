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