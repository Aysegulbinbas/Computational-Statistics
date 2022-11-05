
# n= random numbers

#  to create a function  
Func = function(n,a,b){
  u = runif(n,a,b)
  x = u*(b-a) + a
  hist(x, probability = TRUE,las=1,
       main = " Uniform Distribution of(a,b) ", col=2 )
  lines(density(seq(0,20,0.01)),col=4)
  
}


Func(n=10000,a=2,b=5)


