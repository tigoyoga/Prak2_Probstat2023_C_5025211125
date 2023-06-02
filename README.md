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

![image](https://github.com/tigoyoga/Prak2_Probstat2023_C_5025211125/assets/88433109/cb6329d5-4623-4759-8f35-7e16248413b6)

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
![image](https://github.com/tigoyoga/Prak2_Probstat2023_C_5025211125/assets/88433109/a5d0eba7-c6f3-48c8-82c2-c7bd5a77179e)
> Standar Deviasi : 6.48074069840786

b.) Carilah nilai t (p-value).
- 

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
![image](https://github.com/tigoyoga/Prak2_Probstat2023_C_5025211125/assets/88433109/ad681b57-82d4-45dd-827f-f84220298789)
> t value : 7.7151674981046 dan p value : 5.66352243023973e-05

c.) Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴”.

```r
# Menginputkan masing" data
X <- c(78,75,67,77,70,72,78,70,77)
Y <- c(100,95,70,90,90,90,89,90,100)

# Menghitung t dan p-value
t.test(x, y, paired = TRUE, conf.level = 0.95)
```

