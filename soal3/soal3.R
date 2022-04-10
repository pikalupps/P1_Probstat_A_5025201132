# a. peluang 6 bayi akan lahir
dpois(6, lambda = 4.5)


# b.simulasi dan histogram
set.seed(1)
l = 4.5

# dengan 365 data random
r.poisson <- rpois(365, lambda = l)

# histogram
hist(r.poisson)

# hitung probability x=6
(sum(r.poisson == 6))/365


# c. kesimpulan hasil a dan b
# dijelaskan pada read.me


# d. nilai rataan dan varian
# nilai rataan
nilai.rataan = l
# coba pada 1000000 data random
mean(rpois(1000000, lambda = l))

# varians
varians = l
# coba pada 1000000 data random
var(rpois(1000000, lambda = l))