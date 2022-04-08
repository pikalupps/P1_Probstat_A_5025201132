#a. Peluang terdapat 4 pasien yang sembuh
dbinom(4, size=20, prob=0.2)

#b.  grafik histogram berdasarkan kasus tersebut
x <- dbinom(0:20, size=20, prob=0.2)
hist(x)

#c. Nilai Rataan dan Varian dari DistribusiBinomial.
#- Nilai Rataan
weighted.mean(0:20, x)

#- Varian
weighted.mean(((0:20)-4)^2, x)