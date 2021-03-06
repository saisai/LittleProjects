f1 <- function(x) {2*1.72*x*exp(-1.72*x^2)}
n1 <- integrate(f1,0,1.3)
n2 <- integrate(f1,0.58,1.32)
n3a <- integrate(function(x) {0.99*x*exp(-0.99*x)},0,+Inf)
n3b <- integrate(function(x) {0.99*x^2*exp(-0.99*x)},0,+Inf)
print(n1,digits=22)
print(n2,digits=22)
print(n3a,digits=22)
print(n3b,digits=22)