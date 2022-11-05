set.seed(361)

# random sample

myfunc <- function(n) {
  i <- 0    # iteration
  k <- 0    # counter for accepted
  y <- numeric(n)
  
  while (k < n) {
    u <- runif(1, min=0, max=2/pi)
    i <- i + 1
    x <- runif(1,min=-1, max=1)
    if (sqrt(1-x^2)>u) {
      #then accept x
      k <- k + 1
      y[k] <- x
    }
  }
  
  hist(y, prob = TRUE, main ="f(x)=(2/pi)*sqrt(1-x^2)", ylim = c(0,0.7),las=1)
  a = seq(-1,1,0.01)
  lines(a,(2/pi)*sqrt(1-a^2),col="red",lwd = 3)
  summary(y)
}

myfunc(10000)   #  in order to generate n=10000 random numbers