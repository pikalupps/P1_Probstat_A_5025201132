set.seed(1)
l = 3

# a. Fungsi Probabilitas dari Distribusi Exponensial
# fungsi manual
prob.exp <- function(x, lambda) {
  prob <- lambda*(exp((-1*lambda)*x))
  return(prob)
}

# contoh dengan fungsi manual (x=1)
prob.exp(1, lambda = l)

# contoh dengan fungsi bawaan (x=1)
dexp(1, rate = l)


# b. histogram 10, 100, 1000, dan 10000 bilangan random
# 10 bilangan random
a <- rexp(10, rate = l)
hist(a)

# 100 bilangan random
b <- rexp(100, rate = l)
hist(b)

# 1000 bilangan random
c <- rexp(1000, rate = l)
hist(c)

# 10000 bilangan random
d <- rexp(10000, rate = l)
hist(d)


# c. nilai rataan dan varian (n = 100, lamda = 3)
# nilai rataan
mean(rexp(100, rate = l))

# varians
var(rexp(100, rate = l))