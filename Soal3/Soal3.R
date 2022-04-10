lahir = 6
avglahir = 4.5
dpois(lahir, avglahir)

n = 365
avglahir = 4.5
set.seed(2)
babies <- data.frame('data' = rpois(n, avglahir))

babies %>% ggplot() +
  geom_histogram(aes(x = data, y = stat(count / sum(count)), fill = data == 6), binwidth = 1) +
  scale_fill_manual(values = c("#6BCB77", "#FF6B6B")) +
  scale_x_continuous(breaks = 0:10) +
  labs(x = 'Jmlah kelahiran per periode', y = 'Proporsi', title = 'Simulasi kelahiran 6 bayi')


1 <- lahir

miu<-1
miu
varian<-1
varian