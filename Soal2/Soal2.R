n=20
p=0.2
x=3
probability = dbinom(x , n, prob = p, log = FALSE)

probability

hist(rbinom(x, n, prob = p),
     xlab = "X",
     ylab = "Frekuensi",
     main = "Histogram soal 2A")

