# Pemrograman Asynchronous

**Nama : Raudhil Firdaus Naufal** 

**NIM : 2341720164**  

**Kelas : TI-3G**

# Praktikum 1: Mengunduh Data dari Web Service (API)

**Langkah 1: Buat Project Baru**

![alt text](img/image.png)

**Langkah 2: Cek file pubspec.yaml**

![alt text](<img/image copy.png>)

**Langkah 3: Buka file main.dart**

**Soal 1 Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.**

![alt text](<img/image copy 2.png>)

**Langkah 4: Tambah method getData()**

![alt text](<img/image copy 3.png>)

**Soal 2**

**- Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.**

**- Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W11: Soal 2".**

![alt text](<img/image copy 4.png>)

**Langkah 5: Tambah kode di ElevatedButton**

![alt text](<img/image copy 5.png>)

**Soal 3**

**Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!**

Kode tersebut mengambil data secara asinkron, jika berhasil, ia mengambil 450 karakter pertama dari respons dan memperbarui UI, tetapi jika terjadi kesalahan, ia menampilkan pesan error pada UI.

**Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 3".**

![alt text](gif/video1.gif)

# Praktikum 2: Menggunakan await/async untuk menghindari callbacks

**Langkah 1: Buka file main.dart**

![alt text](<img/image copy 6.png>)

**Langkah 2: Tambah method count()**

![alt text](<img/image copy 7.png>)

**Langkah 3: Panggil count()**

![alt text](<img/image copy 8.png>)

**Langkah 4: Run**

**Soal 4**

**- Jelaskan maksud kode langkah 1 dan 2 tersebut!**

- Langkah 1: Mendefinisikan 3 fungsi yang masing masing memberikan fungsi penundaan 3 detik

- Langkah 2: Memanggil ketiga fungsi tersebut dan menampilkannya secara berurutan dengan penundaan masing masing 3 detik

**- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 4".**

![alt text](gif/video2.gif)