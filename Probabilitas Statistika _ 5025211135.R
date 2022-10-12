#========================================
#                 Soal 1
#========================================
x=3
p=0.20
#A
paste("Hasil: ", dgeom(x-1,p))

#B
random=10000
paste(mean(rgeom(random,p)==3))

#D
hist(rgeom(random, p))

#E
rataan=1/p
paste("Nilai Rataan(µ): ", rataan)
varian=(1-p)/p^2
paste("Nilai Varian(σ²): ", varian)

#========================================
#                 Soal 2
#========================================
n = 20 
p = 0.2 

#A
x = 4 
paste("Hasil: ", dbinom(x,n,p))

#B
hist(rbinom(x,n,p)) 

#C
rataan = n * p
paste("Nilai Rataan(µ): ", rataan)
varian = n * p * (1-p)
paste("Nilai Varian(σ²): ", varian)

#========================================
#                 Soal 3
#========================================
lamda = 4.5

#A
x = 6
paste("Hasil: ", dpois(x, lamda))

#B
n = 356 #Jumlah hari dalam setahun
hist(rpois(n, lamda))

#D
paste("Nilai Rataan(µ): ", lamda)
paste("Nilai Varian(σ²): ", lamda)

#========================================
#                 Soal 4
#========================================
x = 2
v = 10

#A
paste("Hasil: ", dchisq(x,10))

#B
random = 100
hist(rchisq(random,v))

#C
rataan = v
paste("Nilai Rataan(µ): ", rataan)
varian = 2 * v
paste("Nilai Varian(σ²): ", varian)

#========================================
#                 Soal 5
#========================================
lamda = 3

#A
paste("Hasil: ", rexp(lamda))

#B
set.seed(1)
hist(rexp(10, rate = lamda), main = "Grafik Histogram Exponetial dengan 10 bil.random")
hist(rexp(100, rate = lamda), main = "Grafik Histogram Exponetial dengan 100 bil.random")
hist(rexp(1000, rate = lamda), main = "Grafik Histogram Exponetial dengan 1000 bil.random")
hist(rexp(10000, rate = lamda), main = "Grafik Histogram Exponetial dengan 10000 bil.random")

#C
n = 100
set.seed(1)
rataan = mean(rexp(n, lamda))
paste("Nilai Rataan(µ): ", rataan)
varian = (sd(rexp(n, lamda))) ^ 2
paste("Nilai Varian(σ²): ", varian)

#========================================
#                 Soal 6
#========================================
random = 100
mean = 50
sd = 8

#A
set.seed(1)
data = rnorm(random, mean, sd)
summary(data)

x1 = runif(1, min = min(data), max = mean) 
paste("X1: ", x1)
x2 = runif(1, min = mean, max = max(data)) 
paste("X2: ", x2)

peluang1 = pnorm(x1, mean, sd) 
paste("x1: ", peluang1)
peluang2 = pnorm(x2, mean, sd) 
paste("x2: ", peluang2)

peluang = peluang2 - peluang1
plot(data)

#B
breaks = 50
hist(data, breaks, main = "5025211135_Gabrielle Immanuel Osvaldo Kurniawan_Probstat_A_DNHistogram")

#C
paste("Nilai Varian(σ²): ", (sd(data)) ^ 2)