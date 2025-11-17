# Lanjutan State Management dengan Streams

**Nama : Raudhil Firdaus Naufal** 

**NIM : 2341720164**  

**Kelas : TI-3G**

# Praktikum 1: Dart Streams

**Langkah 1: Buat Project Baru**

**Langkah 2: Buka file main.dart**

![alt text](img/image.png)

**Soal 1**

![alt text](<img/image copy.png>)

**Langkah 3: Buat file baru stream.dart**

![alt text](<img/image copy 2.png>)

**Langkah 4: Tambah variabel colors**

![alt text](<img/image copy 3.png>)

**Soal 2**

![alt text](<img/image copy 4.png>)

**Langkah 5: Tambah method getColors()**

![alt text](<img/image copy 5.png>)

**Langkah 6: Tambah perintah yield***

![alt text](<img/image copy 6.png>)

**Soal 3**

- yield*: Keyword yield* digunakan dalam fungsi generator asinkron (async*) untuk mengembalikan semua elemen dari Stream lain (atau Iterable) secara berturut-turut.

- Maksud Kode: Kode tersebut membuat sebuah Stream yang akan mengeluarkan objek Color dari daftar colors setiap satu detik, mengulanginya dari awal daftar setelah mencapai elemen terakhir.

**Langkah 7: Buka main.dart**

![alt text](<img/image copy 7.png>)

**Langkah 8: Tambah variabel**

![alt text](<img/image copy 8.png>)

**Langkah 9: Tambah method changeColor()**

![alt text](<img/image copy 9.png>)

**Langkah 10: Lakukan override initState()**

![alt text](<img/image copy 10.png>)

**Langkah 11: Ubah isi Scaffold()**

![alt text](<img/image copy 11.png>)

**Langkah 12: Run**

Lakukan running pada aplikasi Flutter Anda, maka akan terlihat berubah warna background setiap detik.

**Soal 4**

![alt text](gif/1.gif)

**Langkah 13: Ganti isi method changeColor()**

![alt text](<img/image copy 12.png>)

**Soal 5**

- listen: cara berbasis callback yang memungkinkan kode di sekitar terus berjalan 

- await for: dapat digunakan di dalam fungsi async dan akan menangguhkan eksekusi hingga setiap elemen Stream diterima.

# Praktikum 2: Stream controllers dan sinks

**Langkah 1: Buka file stream.dart**

![alt text](<img/image copy 13.png>)

**Langkah 2: Tambah class NumberStream**

![alt text](<img/image copy 14.png>)

**Langkah 3: Tambah StreamController**

![alt text](<img/image copy 15.png>)

**Langkah 4: Tambah method addNumberToSink**

![alt text](<img/image copy 16.png>)

**Langkah 5: Tambah method close()**

![alt text](<img/image copy 17.png>)

**Langkah 6: Buka main.dart**

![alt text](<img/image copy 18.png>)

**Langkah 7: Tambah variabel**

![alt text](<img/image copy 19.png>)

**Langkah 8: Edit initState()**

![alt text](<img/image copy 20.png>)

**Langkah 9: Edit dispose()**

![alt text](<img/image copy 21.png>)

**Langkah 10: Tambah method addRandomNumber()**

![alt text](<img/image copy 22.png>)

**Langkah 11: Edit method build()**

![alt text](<img/image copy 23.png>)

**Langkah 12: Run**

**Soal 6**

- Langkah 8 (initState): Langkah ini menginisialisasi NumberStream dan segera mendaftarkan listener yang akan memperbarui lastNumber (state UI) setiap kali angka baru dikirim ke Stream.

- Langkah 10 (addRandomNumber): Langkah ini membuat angka acak antara 0 hingga 9 (inklusif) dan mengirimkannya ke Sink dari NumberStream melalui metode addNumberToSink.

![alt text](gif/2.gif)

**Langkah 13: Buka stream.dart**

![alt text](<img/image copy 24.png>)

**Langkah 14: Buka main.dart**

![alt text](<img/image copy 25.png>)

**Langkah 15: Edit method addRandomNumber()**

![alt text](<img/image copy 26.png>)

**Soal 7**

tujuan langkah 13 hingga 15 adalah untuk mengimplementasikan penanganan kesalahan (error handling) pada NumberStream di mana kesalahan dapat dipicu secara manual (addError()) dan ditangkap oleh listener (onError) untuk memperbarui UI (lastNumber = -1).

# Praktikum 3: Injeksi data ke streams

**Langkah 1: Buka main.dart**

![alt text](<img/image copy 27.png>)

**Langkah 2: Tambahkan kode ini di initState**

![alt text](<img/image copy 28.png>)

**Langkah 3: Tetap di initState**

![alt text](<img/image copy 29.png>)

**Langkah 4: Run**

**Soal 8**

Ketiga langkah tersebut berfungsi untuk membuat dan mengaktifkan StreamTransformer yang akan mengalikan nilai angka yang masuk dengan 10 atau mengganti data dengan -1 jika terjadi error, sebelum data tersebut akhirnya didengarkan oleh UI.

![alt text](gif/3.gif)

# Praktikum 4: Subscribe ke stream events

**Langkah 1: Tambah variabel**

![alt text](<img/image copy 30.png>)

**Langkah 2: Edit initState()**

![alt text](<img/image copy 31.png>)

**Langkah 3: Tetap di initState()**

![alt text](<img/image copy 32.png>)

**Langkah 4: Tambah properti onDone()**

![alt text](<img/image copy 33.png>)

**Langkah 5: Tambah method baru**

![alt text](<img/image copy 34.png>)

**Langkah 6: Pindah ke method dispose()**

![alt text](<img/image copy 35.png>)

**Langkah 7: Pindah ke method build()**

![alt text](<img/image copy 36.png>)

**Langkah 8: Edit method addRandomNumber()**

![alt text](<img/image copy 37.png>)

**Langkah 9: Run**

**Langkah 10: Tekan button ‘Stop Subscription**

![alt text](<img/image copy 38.png>)

**Soal 9**

Ketiga fungsi tersebut secara bersama-sama berfungsi untuk mengatur siklus hidup penuh dari Stream, mulai dari memulai langganan saat widget dibuat, mengirim data secara aman hanya jika Stream aktif, hingga membatalkan langganan saat widget dimusnahkan untuk mencegah kebocoran memori.

![alt text](gif/4.gif)

# Praktikum 5: Multiple stream subscriptions

**Langkah 1: Buka file main.dart**

![alt text](<img/image copy 41.png>)

**Langkah 2: Edit initState()**

![alt text](<img/image copy 40.png>)

**Langkah 3: Run**

**Soal 10**

Alasan Terjadi error adalah karena kode mencoba listen Stream yang sama lebih dari satu kali (subscription dan subscription2) padahal secara default Stream dari StreamController hanya memperbolehkan satu subscription

**Langkah 4: Set broadcast stream**

![alt text](<img/image copy 42.png>)

**Langkah 5: Edit method build()**

![alt text](<img/image copy 43.png>)

**Langkah 6: Run**

**Soal 11**

Hal itu bisa terjadi karena setiap kali data baru dikirim ke Stream, kedua langganan menerima event yang sama dan masing-masing menambahkan nilai tersebut ke variabel values, sehingga nilainya menumpuk dua kali lipat.

![alt text](gif/5.gif)