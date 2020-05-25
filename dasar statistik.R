
kota <- list(nama_kota="Makassar",propinsi="Sulawesi Selatan",luas_km2 = 199.3)
# Tampilkan isi variable list kota
kota$nama_kota = "Pasuruan"

kota

#Membaca dataset dengan read.csv dan dimasukkan ke variable data_intro
data_intro <- read.csv("https://academy.dqlab.id/dataset/data_intro.csv",sep=";")

# Membaca tipe data_intro
str(data_intro)

# Merubah tipe data kolom id menjadi char
data_intro$ID.Pelanggan <-  as.character(data_intro$ID.Pelanggan)
data_intro$Nama <- as.character(data_intro$Nama)

str(data_intro$ID.Pelanggan)
str(data_intro$Nama)

## Mengubah data menjadi factor untuk membedakan data kualitatif dengan menggunakan functon as.factor
data_intro$Jenis.Kelamin <- as.factor(data_intro$Jenis.Kelamin)
data_intro$Produk <- as.factor(data_intro$Produk)
data_intro$Tingkat.Kepuasan <- as.factor(data_intro$Tingkat.Kepuasan)

## Melihat apakah sudah berhasil dalam mengubah variabel tersebut dengan menggunakan function str
str(data_intro$Jenis.Kelamin)
str(data_intro$Produk)
str(data_intro$Tingkat.Kepuasan)

str(data_intro)

library(pracma)
## carilah modus untuk kolom Produk pada variable data_intro
Mode(data_intro$Produk)
## carilah modus untuk kolom Tingkat.Kepuasan pada variable data_intro
Mode(data_intro$Tingkat.Kepuasan)


## carilah median untuk kolom Pendapatan dari variable data_intro
median(data_intro$Pendapatan)
## carilah median untuk  kolom Harga dari variable data_intro
median(data_intro$Harga)
## carilah median untuk kolom Jumlah dari variable data_intro
median(data_intro$Jumlah)
## carilah median untuk  kolom Total dari variable data_intro
median(data_intro$Total)


## carilah mean untuk kolom Pendapatan pada variable data_intro
mean(data_intro$Pendapatan)
## carilah mean untuk kolom Harga pada variable data_intro
mean(data_intro$Harga)
## carilah mean untuk kolom Jumlah pada variable data_intro
mean(data_intro$Jumlah)
## carilah mean untuk kolom Total pada variable data_intro
mean(data_intro$Total)

## carilah range untuk kolom Pendapatan pada variable data_intro
max(data_intro$Pendapatan) - min(data_intro$Pendapatan)

## Carilah varians untuk kolom Pendapatan dari variable data_intro
var(data_intro$Pendapatan)

## Carilah simpangan baku untuk kolom Pendapatan dari variable data_intro
sd(data_intro$Pendapatan)

## carilah summary data dari data_intro
summary(data_intro)

## Carilah sebaran data kolom Jenis.Kelamin dari variable data_intro
plot(data_intro$Jenis.Kelamin)

## Carilah sebaran data dari Pendapatan dari variable data_intro
hist(data_intro$Pendapatan)

## Carilah sebaran data dari Produk dari variable data_intro
plot(data_intro$Produk)

## Carilah sebaran data dari Harga dari variable data_intro
hist(data_intro$Harga)

## Carilah sebaran data dari Jumlah dari variable data_intro
hist(data_intro$Jumlah)

## Carilah sebaran data dari Total dari variable data_intro
hist(data_intro$Total)

## Carilah sebaran data dari Tingkat.Kepuasan dari variable data_intro
plot(data_intro$Tingkat.Kepuasan)

#analisis hubungan korelasi
plot(data_intro$Pendapatan,data_intro$Total)

#uji korelasi
cor.test(data_intro$Pendapatan,data_intro$Total)

#tabulasi silang
tabulasi <- table(data_intro$Produk, data_intro$Tingkat.Kepuasan)
chisq.test(tabulasi)

#box plot 
boxplot(Total~Jenis.Kelamin, data=data_intro)

t.test(Total~Jenis.Kelamin, data=data_intro)


