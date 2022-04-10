# PRAKTIKUM MODUL 1 PROBSTAT 2022

## Soal 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
seseorang yang menghadiri acara vaksinasi sebelumnya.

a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
(distribusi Geometrik)
```R
dgeom(3, prob = 0.2)
```
hasil : 


b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
```R
p = 0.2
n = 3
mean(rgeom(10000, prob = p) == n)
```
menggunakan `rgeom` untuk mengenerate 10000 data, kemudian dengan `mean` mencari rata-rata nilai pada hasil generate tadi yang sama dengan (==) 3, hasil :


c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
- hasil a : 0.1024
- hasil b : 0.1026

**Kesimpulan** : kedua hasil tersebut memiliki nilai yang berdekatan sehingga kita dapat menggunakan pendekatan distribusi geometrik untuk mencari nilai probabilitas


d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
```R
x = 0:20
d.geometrik <- dgeom(x, prob=p)
plot(x, d.geometrik, main='Distribusi Geometrik (p=0.2)')
hist(d.geometrik)
```
membuat `dgeom` untuk x dari 0 sampai 20, untuk nilai peluang x=3 dapat dilihat pada grafik plot :

histogram :

e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
```R
# nilai rataan
nilai.rataan = 1/p
# coba pada 1000000 data random
mean(rgeom(1000000, prob = p)) + 1

# varians
varians = (1 - p) / p^2
# coba pada 1000000 data random
var(rgeom(1000000, prob = p))
```
- nilai exact rataan = 5, nilai rataan pada 1000000 data random = 5.000468
- nilai exact varians = 20, varians pada 1000000 data random = 20.04899


## Soal 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
```R
p = 0.2
n = 20
```
a. Peluang terdapat 4 pasien yang sembuh.
```R
dbinom(4, size = n, prob = p)
```
hasil :

b. Gambarkan grafik histogram berdasarkan kasus tersebut.
```R
# contoh grafik (x=0:20)
x = 0:20
d.binomial <- dbinom(x, size=n, prob=p)
plot(x, d.binomial, main='Distribusi binomial (n=20, p=0.2)')
hist(d.binomial)
```
membuat `dbinom` untuk x dari 0 sampai 20, nilai peluang untuk tiap x dari 0 - 20 dapat dilihat pada grafik plot:

histogram :

c. Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
```R
# nilai rataan
nilai.rataan = n*p
# coba pada 1000000 data random
mean(rbinom(1000000, size = n, prob = p))

# varians
varians = (1 - p) / p^2
# coba pada 1000000 data random
var(rbinom(1000000, size = n, prob = p))
```
- nilai exact rataan = , nilai rataan pada 1000000 data random = 
- nilai exact varians = , varians pada 1000000 data random = 
