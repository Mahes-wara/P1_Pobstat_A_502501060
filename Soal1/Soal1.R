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

install.packages("dplyr")
install.packages("ggplot2")

miu = 1/p
paste ("Nilai rataan = ",miu)
nil_var = (1-p) / p^2
paste ("Nilai Varian = ",nil_var)

p = 0.20
n = 3
dgeom(x = n, prob = p)

