v = 10

# a. probabilitas
dchisq(2, df = v)


# b. histogram
set.seed(1)
r.chisquare <- rchisq(100, 10)
hist(r.chisquare)


# c. nilai rataan dan varian
# nilai rataan
nilai.rataan = v
# coba pada 1000000 data random
mean(rchisq(1000000, df = v))

# varians
varians = 2*v
# coba pada 1000000 data random
var(rchisq(1000000, df = v))