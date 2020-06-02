#Buat variable x yang diisi dengan nilai NA
x <- NA

#Pengecekan variable x dengan nilai NA menggunakan operator ==
x == NA

#Pengecekan variable x dengan nilai NA menggunakan function is.na
is.na(x)

# pengecekan NA sebagai atomik variabel
typeof(NA)
typeof(NA_integer_)
typeof(NA_real_)
typeof(NA_complex_)
typeof(NA_character_)
is.na(NA_integer_)
is.na(NA_real_)
is.na(NA_complex_)
is.na(NA_character_)

#Membuat vector bernama isi.vector dengan isi bilangan, dimana salah satunya memiliki missing value
isi.vector <- c(1,2,3,NA,3,1)

#Mengecek keseluruhan tipe data dengan perulangan lapply dan typeof
lapply(isi.vector, typeof)

#Menggunakan is.na untuk mengecek keberadaan missing value dari tiap elemen pada vector 
is.na(isi.vector)

#Membuat vector dengan 7 elemen termasuk NA dan NULL
isi.vector <- c(1,2,3,NA,5,NULL,7)

#Menghitung jumlah elemen dari isi.vector
length(isi.vector)

#Membuat list dengan 3 elemen termasuk NA dan NULL 
isi.list <- list(1,NULL,3,NA,5)

#Menghitung jumlah elemen dari isi.list
length(isi.list)

#Hitung kalkulasi 5 dibagi dengan 0
5/0

#Hitung kalkulasi -120 dibagi dengan 0
-120/0

#Buat variable contoh.nan
contoh.nan <- 0/0
contoh.nan
#Periksa dengan function is.nan
is.nan(contoh.nan)

#Masukkan code di bawah ini sesuai permintaan soal
isi.vector <- c(1,2,NA,4,5,NaN,6)
sum(is.na(isi.vector) == TRUE)

#Buatlah factor dengan isi nilai teks "Jan", "Feb", dan "Mar"
faktor.bulan <- factor(c("Jan","Feb","Mar"))

attributes(faktor.bulan)

levels(faktor.bulan)

class(faktor.bulan)

#perulangan factor
factor(c("Jan", "Feb", "Mar","Jan","Mar", "Jan"))

#Buatlah factor dengan teks "Jan", "Feb", "Mar","Jan","Mar", dan "Jan"
factor.bulan <- factor(c("Jan","Feb","Mar","Jan","Mar","Jan"))
as.integer(factor.bulan)

#Buatlah factor dengan teks "Jan", "Feb", "Mar","Jan","Mar", dan "Jan"
factor.bulan <- factor(c("Jan","Feb","Mar","Jan","Mar","Jan"))

#Mengganti levels 
levels(factor.bulan)[2] <- "Januari"
levels(factor.bulan)[3] <- "Maret"
factor.bulan

#Buatlah factor bernama factor.umur dengan isi c(12, 35, 24, 12, 35, 37)
factor.umur <- factor(c(12, 35, 24, 12, 35, 37))
#Tampilkan variable factor.umur 
factor.umur

#Buatlah variable factor.lokasi dengan isi berupa vector c("Bandung", "Jakarta", NA, "Jakarta", NaN, "Medan", NULL, NULL, "Bandung") 
factor.lokasi <- factor(c("Bandung", "Jakarta", NA, "Jakarta", NaN, "Medan", NULL, NULL, "Bandung"))
#Tampilkan factor.lokasi
factor.lokasi

#Variable factor dengan isi vector c("Jan","Feb","Mar","Jan","Mar") 
factor(c("Jan","Feb","Mar","Jan","Mar"), levels=c("Jan","Feb","Mar"))

penduduk.dki <- read.csv("https://academy.dqlab.id/dataset/dkikepadatankelurahan2013.csv", sep=",")
penduduk.dki
summary(penduduk.dki)

#Menggunakan names untuk variable penduduk.dki.csv
names(penduduk.dki)

names(penduduk.dki)[1] <- "PERIODE"
names(penduduk.dki)[2] <- "PROPINSI"

names(penduduk.dki)

#Membuang kolom X, X.1, X.2 s/d X.11
penduduk.dki <- penduduk.dki[,!names(penduduk.dki) %in% c("X", "X.1","X.2","X.3","X.4","X.5","X.6","X.7","X.8","X.9","X.10","X.11")]
penduduk.dki

library(openxlsx)
#Membaca dataset dengan read.xlsx dan dimasukkan ke variable penduduk.dki
penduduk.dki.xlsx <- read.xlsx(xlsxFile="https://academy.dqlab.id/dataset/dkikepadatankelurahan2013.xlsx")
penduduk.dki.xlsx$NAMA.PROVINSI <- as.factor(penduduk.dki.xlsx$NAMA.PROVINSI)
str(penduduk.dki.xlsx)




