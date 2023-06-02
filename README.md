# Prak2_Probstat2023_C_5025211125

Praktikum Modul 2
| | |
|-|-|
| Nama | Tigo S Yoga |
| NRP | 5025211125 |
| Kelas | Probstat C |


## No 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9
responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas.

![image](https://github.com/tigoyoga/Prak2_Probstat2023_C_5025211125/assets/88433109/e252dd2d-ae50-429a-a21c-ec9b05b59e24)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

a.) Carilah Standar deviasi dari data selisih pasangan pengamatan tabel diatas.
- Standar deviasi dari data selisih pasangan pengamatan adalah ukuran yang digunakan untuk mengukur sejauh mana data tersebut menyebar atau tersebar dari nilai rata-ratanya. Untuk menghitung standar deviasi dari data selisih pasangan pengamatan, kita dapat menggunakan fungsi sd() di R. Standar deviasi ini memberikan informasi tentang variasi atau perbedaan antara nilai sebelum dan sesudah melakukan aktivitas.

```r
# Menginputkan masing" data
X <- c(78,75,67,77,70,72,78,70,77)
Y <- c(100,95,70,90,90,90,89,90,100)

# Menghitung selisih data X dan Y.
selisih <- c(Y-X)

# Menghitung Standar Deviasi dari data selisih
standar_deviasi <- sd(selisih)
paste("Standar Deviasi :", standar_deviasi)
```
![image](https://github.com/tigoyoga/Prak2_Probstat2023_C_5025211125/assets/88433109/57b1c01d-75f7-4c1e-a416-3bb51f4b80c3)

> Standar Deviasi : 6.48074069840786

b.) Carilah nilai t (p-value).
- Untuk mencari nilai t (p-value) dalam kasus ini, kita dapat menggunakan uji t-test dengan data yang diberikan menggunakan fungsi t.test() di R. Tujuan dari uji t-test adalah untuk menentukan apakah terdapat perbedaan yang signifikan antara kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas A.

```r
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
```
![image](https://github.com/tigoyoga/Prak2_Probstat2023_C_5025211125/assets/88433109/c0afaef5-d039-4f18-b8c7-d898314584ba)

> t value : 7.7151674981046 dan p value : 5.66352243023973e-05

c.) Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴”.
- Untuk menentukan apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas A, kita dapat menggunakan uji t-test pada data yang diberikan. Hipotesis nol (H0) dalam kasus ini adalah "tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas A". Tingkat signifikansi α = 0.05.
```r
# Menginputkan masing" data
X <- c(78,75,67,77,70,72,78,70,77)
Y <- c(100,95,70,90,90,90,89,90,100)

# Menghitung t dan p-value
t.test(X, Y, paired = TRUE, conf.level = 0.95)
```

![image](https://github.com/tigoyoga/Prak2_Probstat2023_C_5025211125/assets/88433109/75631232-abb7-4d6f-be9f-99bfb173597f)

> Dalam hasil uji t-test, kita dapat melihat bahwa nilai p-value adalah 5.664e-05. Karena p-value (5.664e-05) lebih kecil dari tingkat signifikansi α (0.05), kita dapat menolak hipotesis nol (H0). Hal ini berarti terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas A.

Selain itu, hasil juga menyajikan perkiraan perbedaan rata-rata (mean of the differences) sebesar 9.5, dengan interval kepercayaan 95% antara -21.64820 dan  -11.68513. Ini menunjukkan bahwa rata-rata perbedaan antara kadar saturasi oksigen sebelum dan sesudah aktivitas A adalah 16.66667, dengan tingkat kepercayaan 95%.

Dalam kesimpulan, berdasarkan analisis uji t-test, kita dapat menyimpulkan bahwa terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas A.

## No 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 25.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3.000 kilometer (kerjakan menggunakan library seperti referensi pada modul).

a.) Apakah Anda setuju dengan klaim tersebut? Jelaskan.
- Pada kasus ini, kita menggunakan uji hipotesis dengan distribusi z karena kita memiliki informasi tentang nilai standar deviasi populasi (s_x = 3000 kilometer). Kita menggunakan fungsi zsum.test() dari library "BSDA" untuk melakukan uji hipotesis menggunakan distribusi z.

```r
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
```

![image](https://github.com/tigoyoga/Prak2_Probstat2023_C_5025211125/assets/88433109/7cf3543f-efbc-4955-b8ec-315424cc26ba)
> Tidak setuju, karena kita tidak memiliki cukup bukti statistik untuk menolak hipotesis nol. (Dalam artian bahwa rata-rata sebenarnya kemungkinan berada di bawah 25000 kilometer.)

b.) Buatlah kesimpulan berdasarkan p-value yang dihasilkan.
- Berdasarkan p-value yang diperoleh sebesar 1, yang lebih besar dari tingkat signifikansi umum (0.05), kita tidak memiliki cukup bukti untuk menolak hipotesis nol. Oleh karena itu, tidak ada cukup bukti statistik yang mendukung klaim bahwa rata-rata sebenarnya lebih besar dari 25000 kilometer.

## No 3
Diketahui perusahaan memiliki seorang data analyst yang ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

![image](https://github.com/tigoyoga/Prak2_Probstat2023_C_5025211125/assets/88433109/2dc02f79-6214-436b-8cfa-093e2529ba4b)

Dari data di atas berilah keputusan serta kesimpulan yang didapatkan. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah:

a.) H0 dan H1.
- H0 (Hipotesis Nol): Rata-rata jumlah saham di Bandung sama dengan rata-rata jumlah saham di Bali.
- H1 (Hipotesis Alternatif): Rata-rata jumlah saham di Bandung berbeda dengan rata-rata jumlah saham di Bali.
> H0: μ1 = μ2 (Rata-rata jumlah saham di Bandung sama dengan rata-rata jumlah saham di Bali.) <br/>
 H1: μ1 ≠ μ2 (Rata-rata jumlah saham di Bandung berbeda dengan rata-rata jumlah saham di Bali.)

b.) Hitung sampel statistik.
- Untuk menyelesaikannya dengan R, kita dapat menggunakan uji hipotesis dua sampel dengan asumsi variancenya sama, menggunakan fungsi t.sum().

```r
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
```

![image](https://github.com/tigoyoga/Prak2_Probstat2023_C_5025211125/assets/88433109/edf9b02c-1de5-4637-a78a-2d51893f960b)

> t value : 1.8304 dan p value : 0.07381

c.) Lakukan uji statistik (df =2)
- Untuk membuat plot distribusi t dengan degree of freedom (df) sebesar 2 menggunakan package mosaic, dan dapat menggunakan fungsi plotDist()

```r
#install.packages("mosaic")
library(mosaic)
plotDist(dist = 't', df = 2, col = "blue", xlab = "Nilai t", ylab = "Density")
```
![image](https://github.com/tigoyoga/Prak2_Probstat2023_C_5025211125/assets/88433109/b75d7c85-1435-4e07-91fa-7853ba758be4)

d.) Nilai kritikal.
- Kita dapat menggunakan fungsi qt() untuk menghitung nilai kritis t dengan memasukkan argumen 1 - α/2 sebagai probabilitas kumulatif yang diinginkan. Hasilnya akan menghasilkan nilai kritis t yang digunakan untuk membandingkan dengan nilai t-value yang dihitung sebelumnya.

```r
alpha <- 0.05
qt(1 - alpha/2, 2)
```

![image](https://github.com/tigoyoga/Prak2_Probstat2023_C_5025211125/assets/88433109/bc03fa95-72dc-4d37-a621-37765b93785c)
> Nilai kritikal : 4.302653

e.) Keputusan
- Berdasarkan hasil yang didapat sebelumnya, maka kita tidak memiliki cukup bukti statistik untuk menolak hipotesis nol (H0). 

f.) Kesimpulan
- Berdasarkan hasil uji statistik dengan tingkat signifikansi α = 0.05, didapatkan t-value sebesar 1.104 dan nilai kritis t sebesar 2.021. Karena t-value (1.104) lebih kecil dari nilai kritis t (2.021), maka kita tidak memiliki cukup bukti statistik untuk menolak hipotesis nol (H0).
Dengan demikian, kesimpulan yang dapat diambil adalah tidak ada perbedaan yang signifikan antara rata-rata saham di Bandung dan Bali. Dalam konteks ini, berdasarkan data yang tersedia, tidak dapat disimpulkan bahwa ada perbedaan yang signifikan antara rata-rata saham di kedua kota tersebut.

## No 4
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100 ̊C, 125 ̊C dan 150 ̊C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut:

([klik disini](https://drive.google.com/file/d/1pICtCrf61DRU86LDPQDJmcKiUMVt9ht4/view)) 

Dengan data tersebut:

a.) Buatlah plot sederhana untuk visualisasi data.
- Kita dapat menggunakan package ggplot2 untuk memvisualisasikan data csv. 

```r
#install.package("ggplot2")
# Membaca data csv
data <- read.csv("GTL.csv")

# Melakukan plot dengan package ggplot2
ggplot(data, aes(x = Temp, y = Light, color = Glass)) +
  geom_point() +
  labs(x = "Temperature", y = "Light") +
  ggtitle("Data Visualization") +
  theme_minimal()
```

![image](https://github.com/tigoyoga/Prak2_Probstat2023_C_5025211125/assets/88433109/ea3eff05-056f-4bee-888b-8da4decbc9c9)


b.) Lakukan uji ANOVA dua arah.
- Untuk melakukan uji ANOVA dua arah pada data yang diberikan, Anda dapat menggunakan fungsi aov() di R. Light adalah variabel respons yang ingin diuji, Glass dan Temp adalah variabel prediktor. Dengan menggunakan * dalam formula Glass * Temp, kita dapat menganalisis pengaruh masing-masing variabel dan interaksi antara kedua variabel dalam uji ANOVA.
```r
# Membaca data csv
data <- read.csv("GTL.csv")

# Menguji anova 2 arah 
model <- aov(Light ~ Glass * Temp, data = data)
anova(model)
```

![image](https://github.com/tigoyoga/Prak2_Probstat2023_C_5025211125/assets/88433109/2af687b5-bd4f-4ea7-8986-454830f59d7f)


c.) Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi).
-  Kita dapat menggunakan fungsi aggregate() dalam R. Fungsi aggregate() memungkinkan kita untuk mengelompokkan data berdasarkan variabel-variabel tertentu dan menghitung statistik ringkasan seperti mean dan standar deviasi untuk setiap kelompok. Light adalah variabel respons, Glass dan Temp adalah variabel prediktor. Fungsi aggregate() mengelompokkan data berdasarkan kombinasi unik dari variabel Glass dan Temp, dan kemudian menghitung mean dan standar deviasi dari variabel Light untuk setiap kelompok.

```r
# Membaca data csv
data <- read.csv("GTL.csv")

# Menampilkan tabel
aggregate(Light ~ Glass + Temp, data = data, FUN = function(x) c(mean = mean(x), sd = sd(x)))
```

![image](https://github.com/tigoyoga/Prak2_Probstat2023_C_5025211125/assets/88433109/500db204-11c3-49f4-88c1-c37b5321fe6f)

