# 1 a
# Menginputkan masing" data
X <- c(78,75,67,77,70,72,78,70,77)
Y <- c(100,95,70,90,90,90,89,90,100)

# Menghitung selisih data X dan Y.
selisih <- c(Y-X)

# Menghitung Standar Deviasi dari data selisih
standar_deviasi <- sd(selisih)
paste("Standar Deviasi :", standar_deviasi)

# 1 b
# Menginputkan masing" data
X <- c(78,75,67,77,70,72,78,70,77)
Y <- c(100,95,70,90,90,90,89,90,100)

# Menghitung selisih data X dan Y.
Selisih <- c(Y-X)

# Menghitung t dan p-value
result <- t.test(selisih)

# Menampilkan nilai p-value
paste("p value :",result$p.value)

# Menampilkan nilai t-value
paste("t value :",result$statistic)

# 1 c
# Menginputkan masing" data
X <- c(78,75,67,77,70,72,78,70,77)
Y <- c(100,95,70,90,90,90,89,90,100)

# Menghitung t dan p-value
t.test(X, Y, paired = TRUE, conf.level = 0.95)

# 2 a
# install.packages("BSDA")
library(BSDA)
sample_mean <- 23500
sample_sd   <- 3000
n           <- 100
pop_mean    <- 25000

# Melakukan uji hipotesis
zsum.test(
  mean.x = sample_mean, 
  sigma.x = sample_sd, 
  n.x = n,
  alternative = "greater", 
  mu = pop_mean, 
  conf.level=0.95
)

# 3 b
jumlah_saham_bandung <- 20
jumlah_saham_bali <- 27
sampel_mean_bandung <- 3.64
sampel_mean_bali <- 2.79
sampel_sd_bandung <- 1.67
sampel_sd_bali <- 1.5
confident_level <- 0.95

# Melakukan uji hipotesis
tsum.test(mean.x=sampel_mean_bandung, s.x = sampel_sd_bandung, n.x = jumlah_saham_bandung,
          mean.y =sampel_mean_bali , s.y = sampel_sd_bali, n.y = jumlah_saham_bali,
          alternative = "two.side", var.equal = TRUE, conf.level = confident_level)

# 3 c
#install.packages("mosaic")
library(mosaic)
plotDist(dist = 't', df = 2, col = "blue", xlab = "Nilai t", ylab = "Density")

# 3 d
alpha <- 0.05
qt(1 - alpha/2, 2)

# 4 a
#install.package("ggplot2")
# Membaca data csv
data <- read.csv("GTL.csv")

# Melakukan plot dengan package ggplot2
ggplot(data, aes(x = Temp, y = Light, color = Glass)) +
  geom_point() +
  labs(x = "Temperature", y = "Light") +
  ggtitle("Data Visualization") +
  theme_minimal()

# 4 b
# Membaca data csv
data <- read.csv("GTL.csv")

# Menguji anova 2 arah 
model <- aov(Light ~ Glass * Temp, data = data)
anova(model)

# 4 c
# Membaca data csv
data <- read.csv("GTL.csv")

# Menampilkan tabel
aggregate(Light ~ Glass + Temp, data = data, FUN = function(x) c(mean = mean(x), sd = sd(x)))
