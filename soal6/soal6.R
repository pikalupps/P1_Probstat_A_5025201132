set.seed(1)
mean = 50
sd = 8
n = 100

# a. membuat plot z terhadap probabilitas
random.value <- rnorm(n, mean, sd)
prob.random.value <- dnorm(random.value, mean, sd)
Z <- (random.value - mean)/sd

plot(Z, prob.random.value, main = 'grafik Z terhadap probabilitasnya')


# b. histogram
hist(prob.random.value, breaks = 50, main = '5025201132_Dhika_Probstat_A_DNhistogram')


# C. varians
var(random.value)
var(prob.random.value)