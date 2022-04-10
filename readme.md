Nama | NRP
---------- | ----------
Maheswara Danendra Satriananda | 5025201060

# No 1

Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya

# 1A
```r
p = 0.20
n = 3
dgeom(x = n, prob = p)
```

Menghitung peluang distribusi geometrik menggunakan dgeom

# 1B
```r
mean(rgeom(n = 10000, prob = p) == 3)
```

Menghitung data yang random menggunakan fungsi rgeom lalu hitung meannya dengan fungsi mean()

# 1C
Hasil dari a adalah 0.1024 dan b adalah 0.1002 dapat disimpulkan bahwa hasilnya tidak berbeda jauh , nilai ditentukan variable x

# 1D
```r
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang X = 3 akan gagal sebelum yang pertama sukses",
       subtitle = "Geometric(.2)",
       x = "Kegagalan sebelum sukses pertama (x)",
       y = "Probabilitas") 
```
Berikut adalah hasil run dari script
![image](https://user-images.githubusercontent.com/73051874/162620572-45526b44-f380-4f2b-9f7d-9e7bf90227a8.png)

# 1E
```r
miu = 1/p
paste ("Nilai rataan = ",miu)
nil_var = (1-p) / p^2
paste ("Nilai Varian = ",nil_var)
```
Menggunakan rumus biasa untuk menghasilkan mean dan varian

# No 2

Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan 

# 2A
```r
n=20
p=0.2
x=3
probability = dbinom(x , n, prob = p, log = FALSE)

probability
```
Dengan hasil  0.2053641

Menghitung peluang distribusi binomial menggunakan fungsi dbinom

# 2B
```r
hist(rbinom(x, n, prob = p),
     xlab = "X",
     ylab = "Frekuensi",
     main = "Histogram soal 2A")
```
![image](https://user-images.githubusercontent.com/73051874/162621418-c679fbe9-79f2-4f6e-bd15-64ee42f9cce2.png)

# 2C
```r
mean = n*(prob=p)
mean
variance = n*(prob=p) * (1-(prob=p))
variance
```
Dengan Hasil Rataan = 4 dan Varian = 3.2

# No 3

Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

# 3A
```r
lahir = 6
avglahir = 4.5
dpois(lahir, avglahir)
```
Menghitung peluang distribusi poisson dengan fungsi dpois dengan hasil 0.1281201

# 3B
```r
n = 365
avglahir = 4.5
set.seed(2)
babies <- data.frame('data' = rpois(n, avglahir))

babies %>% ggplot() +
  geom_histogram(aes(x = data, y = stat(count / sum(count)), fill = data == 6), binwidth = 1) +
  scale_fill_manual(values = c("#6BCB77", "#FF6B6B")) +
  scale_x_continuous(breaks = 0:10) +
  labs(x = 'Jmlah kelahiran per periode', y = 'Proporsi', title = 'Simulasi kelahiran 6 bayi')
```
Hasil dari histogram
![image](https://user-images.githubusercontent.com/73051874/162623480-9b80bf51-7104-4ae7-b4d4-d117143ea149.png)



# 3C
Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
Poin a didapatkan nilai 0.1281201 dan poin b didapatkan nilai 0.1150685
Poin a merupakan hasil perhitungan eksak sedangkan poin b melalui proses simulasi. Ternyata hasil keduanya tidak berbeda jauh


# 3D
```r
1 <- lahir

miu<-1
miu
varian<-1
varian
```
Menggunakan distribusi poisson untuk menghasilkan mean dan varian

# No 4
Diketahui nilai x = 2 dan v = 10. Tentukan

# 4A
```r
x=2
v=10
dchisq(x, v, ncp = 0, log = FALSE)
```
Menggunakan fungsi dchisq untuk menghitung peluang distribusi Chi-Square

# 4B
```r
n=100
set.seed(1)
hist(rchisq(n,v),
     main="Histogram Distribusi Chi-Square dengan 100 data random")
```
Hasil dari histogram
![image](https://user-images.githubusercontent.com/73051874/162623539-db8e0cd5-828e-4888-aa68-0a72d5d1d9bb.png)

# 4C
```r
miu = v
miu
varian = 2*v
varian
```
Dengan hasil miu = 10 dan varian = 20

# No 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

# 5A
```r
lambda = 3
dexp(x=seq(1, 10, by = 0.1), rate = lambda)
```
Menggunakan fungsi dexp untuk menghitung peluang distribusi exponensial. nilai x adalah nilai 1 - 10 dengan interval 0.1

# 5B
```r
set.seed(1)
hist(rexp(n=10, rate = lambda))
set.seed(1)
hist(rexp(n=100, rate = lambda))
set.seed(1)
hist(rexp(n=1000, rate = lambda))
set.seed(1)
hist(rexp(n=10000, rate = lambda))
```
Hasil histogram 
![image](https://user-images.githubusercontent.com/73051874/162623939-1ba5a75e-4d8b-412d-a91e-bbcc07e68d26.png)

# 5C
```r
n=10
mean(rexp(n=n, rate=lambda))
var(rexp(n=n, rate=lambda))
```
Menghitung rata-rata dan fungsi var untuk menghitung varian dengan fungsi mean dan hasilnya mean = 0.1876253 dan var = 0.1401493

# No 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

# 6A
```r
norm_dist_i <- rnorm(N,Mean,Std_dev_i)
  x1 <- floor(mean(norm_dist_i))
  x2 <- ceiling(mean(norm_dist_i))
  z_score <- ((norm_dist_i - mean(norm_dist_i))/ 
                (sd(norm_dist_i)))
  plot(z_score, type = 'p', col = 'yellow')
```

# 6B 
```r
hist(norm_dist_i,50,main = "5025201060_Maheswara Danendra Satriananda_Probstat_A_DNhistogram")
```

# 6C
```r
std_dev_ii <- sd(norm_dist_i)
variance <- std_dev_ii * std_dev_ii
variance
```
Hasil Varian = 3.2
