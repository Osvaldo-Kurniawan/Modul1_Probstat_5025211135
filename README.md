# Modul1_Probstat_5025211135
Solusi Praktikum 1 Probabilitas Statistika

Nama  : Gabrielle Immanuel Osvaldo Kurniawan
NRP   : 5025211135

===========================================================================

  01. Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya. 

     a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
     
     b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

     c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

     d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

     e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
     
  Jawaban :

 - Diketahui :
    ```r
    p = 0.2
    x = 3
    ```

 - Poin A

   Kita diminta untuk menampilkan f(x) atau pdf dari distribusi geometrik sehingga dipergunakan fungsi 
   ```r
    paste("Hasil: ", dgeom(x-1,p))
   ```
   Dimana x-1 adalah banyak kejadian gagal dan p adalah peluangnya

 - Poin B

   Solusi dapat dilakukan dengan menghitung terlebih dahulu distribusi acaknya kemudian baru dicari meannya
   ```r
   random=10000
   paste(mean(rgeom(random,p)==3))
   ```

 - Poin C

   Poin A dan B menghasilkan hasil yang berbeda. Hal ini dikarenakan poin B memiliki variabel acak atau variabel random sehingga hasilnya akan berbeda terus menerus karena tergantung bagaimana variabel yang didapat saat dilakukan pengambilan secaara acak dari fungsinya

- Poin D

   R sudah menyediakan fungsi untuk menghasilkan histogram maka solusinya dapat ditulis sebagai berikut :
   ```r
    hist(rgeom(random, p))
   ```

- Poin E

   Distribusi Geometrik adalah distribusi khusus yang nilai rataan (μ) dan varian (σ²) sudah ditentukan dan dibuktikan. Sehigga solusinya sebagai berikut :
   ```r
    rataan=1/p
   paste("Nilai Rataan(µ): ", rataan)
   varian=(1-p)/p^2
   paste("Nilai Varian(σ²): ", varian)
   ```
 - Full Code

    ```r
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
    ```

  Screenshot hasil console
  ![alt text](https://github.com/Osvaldo-Kurniawan/Modul1_Probstat_5025211135/blob/4352d99b24f43ba071557fd0e4484dda2561e71e/Screenshot%20R%20Studio/Soal%201.png)
  
 ===========================================================================
  
 02. Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

    a. Peluang terdapat 4 pasien yang sembuh.
     
    b. Gambarkan grafik histogram berdasarkan kasus tersebut.
     
    c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.

Jawaban :

 - Diketahui :
    ```r
    n = 20
    p = 0.2
    ```
 - Poin A

   Peluang terdapat 4 pasien yang sembuh dari distribusi binomial :
   ```r
    x = 4 
    paste("Hasil: ", dbinom(x,n,p))
   ```

 - Poin B

    Grafik histogram berdasarkan kasus tersebut menggunakan fungsi R:
    ```r
    hist(rbinom(x,n,p)) 
    ```

 - Poin C

    Distribusi Binomial adalah distribusi khusus yang nilai rataan (μ) dan varian (σ²) sudah ditentukan dan dibuktikan. Sehigga solusinya sebagai berikut :
    ```r
    rataan = n * p
    paste("Nilai Rataan(µ): ", rataan)
    varian = n * p * (1-p)
    paste("Nilai Varian(σ²): ", varian)
    ```
  - Full Code
    ```r
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
    ```
Screenshot hasil console
  ![alt text](https://github.com/Osvaldo-Kurniawan/Modul1_Probstat_5025211135/blob/4352d99b24f43ba071557fd0e4484dda2561e71e/Screenshot%20R%20Studio/Soal%202.png)

  ===========================================================================
  
  03. Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

     a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
     
     b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (n = 365)
     
     c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
     
     d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi poisson.

 Jawaban :

  - Diketahui :
    ```r
    lamda = 4.5
    ```

  - Poin A

    Kita diminta untuk menampilkan f(x) atau pdf dari distribusi poisson untuk x=6 sehingga dipergunakan fungsi 
    ```r
    x = 6
    paste("Hasil: ", dpois(x, lamda))
    ```

  - Poin B

    Grafik histogram berdasarkan kasus tersebut menggunakan fungsi R:
    ```r
    n = 356
    hist(rpois(n, lamda))
    ```

  - Poin C

    Poin A dan B hampir sama hasilnya dapat dilihat dari tabelnya , karena nilai dari poin A sendiri didapat dari range nilai poin B. Range dari B dapat dilihat pada histogram yang telah terbentuk. Oleh karena itu, dalam estimasi selama 365 hari akan memberikan nilai hasil yang hampir sama dengan estimasi jumlah bayi yang akan dilahirkan di waktu selanjutnya.

  - Poin D

    Distribusi Poisson adalah distribusi khusus yang nilai rataan (μ) dan varian (σ²) sudah ditentukan dan dibuktikan. Sehigga solusinya sebagai berikut :
    ```r
    paste("Nilai Rataan(µ): ", lamda)
    paste("Nilai Varian(σ²): ", lamda)
    ```
  
  - Full Code
    ```r
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
    ```
Screenshot hasil console
  ![alt text](https://github.com/Osvaldo-Kurniawan/Modul1_Probstat_5025211135/blob/4352d99b24f43ba071557fd0e4484dda2561e71e/Screenshot%20R%20Studio/Soal%203.png)

  ===========================================================================
  
  04. Diketahui nilai x = 2 dan v = 10. Tentukan:

     a. Fungsi Probabilitas dari Distribusi Chi-Square.
     
     b. Histogram dari Distribusi Chi-Square dengan 100 data random.
     
     c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.

 Jawaban :

  - Diketahui :
    ```r
    x = 2
    v = 10
    ```

  - Poin A

    Kita diminta untuk menampilkan f(x) atau pdf dari distribusi Chi-Square sehingga dipergunakan fungsi 
    ```r
    paste("Hasil: ", dchisq(x,10))
    ```

  - Poin B

    Grafik histogram berdasarkan kasus tersebut menggunakan fungsi R:
    ```r
    random = 100
    hist(rchisq(random,v))
    ```

  - Poin C

    Distribusi Chi-Square adalah distribusi khusus yang nilai rataan (μ) dan varian (σ²) sudah ditentukan dan dibuktikan. Sehigga solusinya sebagai berikut :
    ```r
    rataan = v
    paste("Nilai Rataan(µ): ", rataan)
    varian = 2 * v
    paste("Nilai Varian(σ²): ", varian)
    ```
  
  - Full Code
    ```r
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
    ```
Screenshot hasil console
  ![alt text](https://github.com/Osvaldo-Kurniawan/Modul1_Probstat_5025211135/blob/4352d99b24f43ba071557fd0e4484dda2561e71e/Screenshot%20R%20Studio/Soal%204.png)

  ===========================================================================
  
  05. Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

     a. Fungsi Probabilitas dari Distribusi Exponensial 
     
     b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
     
     c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
        Petunjuk: Gunakan set.seed(1) & Gunakan fungsi bawaan R

 Jawaban :

  - Diketahui :
    ```r
    lamda = 3
    ```

  - Poin A

    Kita diminta untuk menampilkan f(x) atau pdf dari distribusi Exponensial sehingga dipergunakan fungsi 
    ```r
    paste("Hasil: ", rexp(lamda))
    ```

  - Poin B

    Grafik histogram berdasarkan kasus tersebut menggunakan fungsi R:
    ```r
    set.seed(1)
    hist(rexp(10, rate = lamda), main = "Grafik Histogram Exponetial dengan 10 bil.random")
    hist(rexp(100, rate = lamda), main = "Grafik Histogram Exponetial dengan 100 bil.random")
    hist(rexp(1000, rate = lamda), main = "Grafik Histogram Exponetial dengan 1000 bil.random")
    hist(rexp(10000, rate = lamda), main = "Grafik Histogram Exponetial dengan 10000 bil.random")
    ```

  - Poin C

    Distribusi Eksponensial adalah distribusi khusus yang nilai rataan (μ) dan varian (σ²) sudah ditentukan dan dibuktikan. Sehigga solusinya sebagai berikut :
    ```r
    n = 100
    set.seed(1)
    rataan = mean(rexp(n, lamda))
    paste("Nilai Rataan(µ): ", rataan)
    varian = (sd(rexp(n, lamda))) ^ 2
    paste("Nilai Varian(σ²): ", varian)
    ```
    
  - Full Code

    ```r
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
    ```
 Screenshot hasil console
 
 1. Hasil
  ![alt text](https://github.com/Osvaldo-Kurniawan/Modul1_Probstat_5025211135/blob/4352d99b24f43ba071557fd0e4484dda2561e71e/Screenshot%20R%20Studio/Soal%205.png)
 2. Gambar Histogram untuk random 10
  ![alt text](https://github.com/Osvaldo-Kurniawan/Modul1_Probstat_5025211135/blob/cf1d3841d017b1e1e3379839b851f6eb5dbfa8f3/Screenshot%20R%20Studio/Soal%205%20(0).png)
 3. Gambar Histogram untuk random 100
  ![alt text](https://github.com/Osvaldo-Kurniawan/Modul1_Probstat_5025211135/blob/b4b56e2f2e17d85eaecb4daa783d28e17f98604f/Screenshot%20R%20Studio/Soal%205%20(1).png)
 4. Gambar Histogram untuk random 1000
  ![alt text](https://github.com/Osvaldo-Kurniawan/Modul1_Probstat_5025211135/blob/b4b56e2f2e17d85eaecb4daa783d28e17f98604f/Screenshot%20R%20Studio/Soal%205%20(2).png)
 5. Gambar Histogram untuk random 10000
  ![alt text](https://github.com/Osvaldo-Kurniawan/Modul1_Probstat_5025211135/blob/b4b56e2f2e17d85eaecb4daa783d28e17f98604f/Screenshot%20R%20Studio/Soal%205%20(3).png)
  
  ===========================================================================
  
 06. Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

    a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).  
        Keterangan : 
        X1 = Dibawah rata-rata    X2 = Diatas rata-rata
        Contoh data :
        1,2,4,2,6,3,10,11,5,3,6,8
        rata-rata = 5.083333
        X1 = 5                    X2 = 6
     
     b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: 
        NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
        Contoh :
        312312312_Rola_Probstat_A_DNhistogram

     c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

 Jawaban :

  - Diketahui :
    ```r
    random = 100
    mean = 50
    sd = 8
    ```

  - Poin A

    Kita diminta untuk menampilkan f(x) atau pdf dari distribusi Normal
    ```r
    set.seed(1)
    data = rnorm(random, mean, sd)
    paste("Hasil: ", data)
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
    ```
    runif() function membangun angka random dari distribusi uniform. Sifat ini dapat dimanfaatkan untuk mencari data diatas maupun dibawah dari rata rata yang didapat. Untuk random bawah, batas minimumnya adalah data terkecil sedangkan batas maksimumnya adalah data terbesar, setelahnya runif() akan mencari 1 data random dintara range yang diberikan, demikian sebaliknya untuk random atas

  - Poin B

    Grafik histogram berdasarkan kasus tersebut menggunakan fungsi R:
    ```r
    breaks = 50
    hist(data, breaks, main = "5025211135_Gabrielle Immanuel Osvaldo Kurniawan_Probstat_A_DNHistogram")
    ```
    Untuk menambahkan atau mengubah judul dari histogram kita berikan instruksi lebih pada paramater hist() dengan main = <String>

  - Poin C

    Varian adalah kuadrat dari standar deviasi. Sehigga solusinya sebagai berikut :
    ```r
    paste("Nilai Varian(σ²): ", (sd(data)) ^ 2)
    ```

  - Full Code
    ```r
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
    ```
Screenshot hasil console
 
 1. Hasil
  ![alt text](https://github.com/Osvaldo-Kurniawan/Modul1_Probstat_5025211135/blob/4352d99b24f43ba071557fd0e4484dda2561e71e/Screenshot%20R%20Studio/Soal%206.png)
 2. Plot 6.a
  ![alt text](https://github.com/Osvaldo-Kurniawan/Modul1_Probstat_5025211135/blob/b4b56e2f2e17d85eaecb4daa783d28e17f98604f/Screenshot%20R%20Studio/Soal%206%20(0).png)
