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


