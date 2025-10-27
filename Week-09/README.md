# Kamera

**Nama : Raudhil Firdaus Naufal** 

**NIM : 2341720164**  

**Kelas : TI-3G**

# Tugas Praktikum

**1. Selesaikan Praktikum 1 dan 2, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md! Jika terdapat error atau kode yang tidak dapat berjalan, silakan Anda perbaiki sesuai tujuan aplikasi dibuat!**

# Praktikum 1: Mengambil Foto dengan Kamera di Flutter

**Langkah 1: Buat Project Baru**

Buatlah sebuah project flutter baru dengan nama kamera_flutter, lalu sesuaikan style laporan praktikum yang Anda buat.

**Langkah 2: Tambah dependensi yang diperlukan**

![alt text](kamera_flutter/img/image1.png)

**Langkah 3: Ambil Sensor Kamera dari device**

![alt text](kamera_flutter/img/image2.png)

**Langkah 4: Buat dan inisialisasi CameraController**

![alt text](kamera_flutter/img/image3.png)

**Langkah 5: Gunakan CameraPreview untuk menampilkan preview foto**

![alt text](kamera_flutter/img/image4.png)

**Langkah 6: Ambil foto dengan CameraController**

![alt text](kamera_flutter/img/image5.png)

**Langkah 7: Buat widget baru DisplayPictureScreen**

![alt text](kamera_flutter/img/image6.png)

**Langkah 8: Edit main.dart**

![alt text](kamera_flutter/img/image7.png)

**Langkah 9: Menampilkan hasil foto**

![alt text](kamera_flutter/img/image8.png)

![alt text](kamera_flutter/img/image9.png)

# Praktikum 2: Membuat photo filter carousel

**Langkah 1: Buat project baru**

Buatlah project flutter baru di pertemuan 09 dengan nama photo_filter_carousel

**Langkah 2: Buat widget Selector ring dan dark gradient**

![alt text](kamera_flutter/img/image10.png)

**Langkah 3: Buat widget photo filter carousel**    

![alt text](kamera_flutter/img/image11.png)

**Langkah 4: Membuat filter warna - bagian 1**

![alt text](kamera_flutter/img/image12.png)

**Langkah 5: Membuat filter warna**

![alt text](kamera_flutter/img/image13.png)

**Langkah 6: Implementasi filter carousel**

![alt text](kamera_flutter/img/image14.png)

![alt text](kamera_flutter/img/image15.png)

**2. Gabungkan hasil praktikum 1 dengan hasil praktikum 2 sehingga setelah melakukan pengambilan foto, dapat dibuat filter carouselnya!**

![alt text](kamera_flutter/img/image16.png)

**3. Jelaskan maksud void async pada praktikum 1?**

Async adalah tanda khusus yang kita berikan pada sebuah fungsi, yang memiliki tugas yang membutuhkan waktu lama contohnya menyalakan kamera.

**4. Jelaskan fungsi dari anotasi @immutable dan @override ?**

- @immutable: Memberitahu developer lain kalau field dalam class ini tidak akan pernah berubah setelah object dibuat, yang membuatnya aman untuk digunakan.

- @override: Wajib digunakan untuk menandai kalau suatu metode atau fungsi dalam subclass sedang menimpa atauu mengganti implementasi dari metode yang sudah ada di parent classnya
