# Persistensi Data

**Nama : Raudhil Firdaus Naufal** 

**NIM : 2341720164**  

**Kelas : TI-3G**

# Praktikum 1: Konversi Dart model ke JSON

**Soal 1**

![alt text](img/image.png)

**Hasil:**

![alt text](<img/image copy.png>)

Kode-kode pada langkah 1-10 bertujuan untuk memuat data pizza dari file JSON lokal, menyimpannya sebagai String dalam state aplikasi, dan menampilkannya langsung (masih dalam format JSON mentah) di layar aplikasi Flutter setelah widget utama (_MyHomePageState) diinisialisasi.

**Soal 2**

![alt text](<img/image copy.png>)

**Hasil**

![alt text](<img/image copy 2.png>)

Kode-kode pada langkah 11-21 berfungsi untuk memuat data JSON mentah, mengonversinya menjadi objek Dart terstruktur (List<Pizza>), dan kemudian menggunakan daftar objek tersebut untuk membangun Widget UI (kemungkinan ListView atau Column) yang menampilkan pizzaName sebagai judul tebal dan description sebagai teks pendukung untuk setiap item, sehingga tampilannya rapi dan terorganisir, bukan lagi sebagai string JSON mentah.

**Soal 3**

![alt text](<img/image copy 2.png>)

**Hasil:**

![alt text](<img/image copy 3.png>)

Fungsi langkah 23-25 adalah melakukan fungsi konversi di mana data JSON di-encode dua kali lipat, menyebabkan tanda kutip di dalam data harus "diloloskan" (escaped) oleh encoder terluar, oleh karena itu muncul di debug console.