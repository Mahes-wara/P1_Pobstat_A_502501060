norm_dist_i <- rnorm(N,Mean,Std_dev_i)
  x1 <- floor(mean(norm_dist_i))
  x2 <- ceiling(mean(norm_dist_i))
  z_score <- ((norm_dist_i - mean(norm_dist_i))/ 
                (sd(norm_dist_i)))
  plot(z_score, type = 'p', col = 'yellow')
  
hist(norm_dist_i,50,main = "5025201060_Maheswara Danendra Satriananda_Probstat_A_DNhistogram")

std_dev_ii <- sd(norm_dist_i)
variance <- std_dev_ii * std_dev_ii
variance