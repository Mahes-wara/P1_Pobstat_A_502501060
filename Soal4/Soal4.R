x=2
v=10
dchisq(x, v, ncp = 0, log = FALSE)

n=100
set.seed(1)
hist(rchisq(n,v),
     main="Histogram Distribusi Chi-Square dengan 100 data random")

miu = v
miu
varian = 2*v
varian