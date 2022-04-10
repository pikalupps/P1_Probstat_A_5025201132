# a. peluang 3 gagal sebelum sukses pertama
dgeom(3, prob = 0.2)


# b. mean distribusi geometrik acak 10000 data random () == 3
p = 0.2
n = 3
mean(rgeom(10000, prob = p) == n)


# c. kesimpulan hasil a dan b
# dijelaskan pada read.me


# d. grafik histogram
# contoh grafik (x=0:20)
x = 0:20
d.geometrik <- dgeom(x, prob=p)
plot(x, d.geometrik, main='Distribusi Geometrik (p=0.2)')
hist(d.geometrik)


# e. nilai rataan dan varian
# nilai rataan
nilai.rataan = 1/p
# coba pada 1000000 data random
mean(rgeom(1000000, prob = p)) + 1

# varians
varians = (1 - p) / p^2
# coba pada 1000000 data random
var(rgeom(1000000, prob = p))