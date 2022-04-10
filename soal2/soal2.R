p = 0.2
n = 20

# a. peluang terdapat 4 pasien yang sembuh
dbinom(4, size = n, prob = p)


# b. grafik histogram
# contoh grafik (x=0:20)
x = 0:20
d.binomial <- dbinom(x, size=n, prob=p)
plot(x, d.binomial, main='Distribusi binomial (n=20, p=0.2)')
hist(d.binomial)


# c. nilai rataan dan varian
# nilai rataan
nilai.rataan = n*p
# coba pada 1000000 data random
mean(rbinom(1000000, size = n, prob = p))

# varians
varians = n*p*(1-p)
# coba pada 1000000 data random
var(rbinom(1000000, size = n, prob = p))