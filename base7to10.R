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