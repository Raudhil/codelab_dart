import 'package:flutter/material.dart';
import 'dart:convert';
// import 'model/pizza.dart'; // Dibiarkan sebagai komentar karena class tidak disertakan
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// Dummy class untuk menghindari error kompilasi jika model/pizza.dart tidak ada
class Pizza {
  Pizza.fromJson(Map<String, dynamic> json);
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raul',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variabel State dan Controller
  String pizzaString = '';
  List<Pizza> myPizzas = [];
  int appCounter = 0;
  String documentsPath = '';
  String tempPath = '';
  late File myFile;
  String fileText = '';
  final pwdController = TextEditingController();
  String myPass = ''; // Menyimpan hasil pembacaan Secure Storage
  final storage = const FlutterSecureStorage();
  final myKey = 'myPass';
  // ... (Fungsi yang tidak digunakan dibiarkan)

  // **********************************************
  // * SECURE STORAGE METHODS *
  // **********************************************
  Future<String> readFromSecureStorage() async {
    String secret = await storage.read(key: myKey) ?? '';
    return secret;
  }

  Future writeToSecureStorage() async {
    await storage.write(key: myKey, value: pwdController.text);
    // Tambahkan notifikasi atau log di sini jika diperlukan
  }

  // **********************************************
  // * FILE I/O & PATH PROVIDER METHODS *
  // **********************************************
  Future<bool> writeFile() async {
    try {
      await myFile.writeAsString('Margherita, Capricciosa, Napoli');
      return true;
    } catch (e) {
      return false;
    }
  }

  Future getPaths() async {
    final docDir = await getApplicationDocumentsDirectory();
    final tempDir = await getTemporaryDirectory();
    // Tidak perlu setState di sini, cukup di initState yang dipicu setelah selesai
    if (mounted) {
      setState(() {
        documentsPath = docDir.path;
        tempPath = tempDir.path;
      });
    }
  }

  Future<bool> readFile() async {
    try {
      String fileContent = await myFile.readAsString();
      setState(() {
        fileText = fileContent;
      });
      return true;
    } catch (e) {
      setState(() {
        fileText = 'Gagal membaca: File belum ada atau error I/O.';
      });
      return false;
    }
  }

  // **********************************************
  // * LIFECYCLE *
  // **********************************************
  @override
  void initState() {
    // FIX 1: super.initState() harus selalu dipanggil paling awal.
    super.initState();

    // FIX 2 & 3: Tambahkan async dan await pada writeFile() untuk mengatasi
    // race condition agar file I/O berhasil.
    getPaths().then((_) async {
      myFile = File('$documentsPath/pizzas.txt');
      await writeFile(); // TUNGGU hingga penulisan file selesai

      if (mounted) {
        setState(() {}); // Picu rebuild setelah path dan file I/O selesai
      }
    });
  }

  @override
  void dispose() {
    pwdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Storage Demo')),
      // Tambahkan SingleChildScrollView agar tidak terjadi overflow di emulator
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Dihapus karena padding SingleChildScrollView
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ===================================
            // BAGIAN FILE I/O (Path Provider)
            // ===================================
            const Text(
              '1. File System Paths:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text('Doc path: $documentsPath'),
            Text('Temp path: $tempPath'),
            const SizedBox(height: 10),

            ElevatedButton(
              child: const Text('Read File'),
              onPressed: () => readFile(),
            ),
            const SizedBox(height: 10),
            Text(
              'File Content: $fileText',
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),

            const Divider(height: 30, thickness: 1),

            // ===================================
            // BAGIAN SECURE STORAGE (FIXED PLACEMENT)
            // ===================================
            const Text(
              '2. Secure Storage:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // INPUT TEXT FIELD (Diatas Tombol)
            TextField(
              controller: pwdController,
              decoration: const InputDecoration(
                labelText: 'Enter secret value',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyan),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // TOMBOL SAVE VALUE
                Expanded(
                  child: ElevatedButton(
                    child: const Text('Save Value'),
                    onPressed: () {
                      writeToSecureStorage();
                    },
                  ),
                ),
                const SizedBox(width: 10),

                // TOMBOL READ VALUE
                Expanded(
                  child: ElevatedButton(
                    child: const Text('Read Value'),
                    onPressed: () {
                      readFromSecureStorage().then((value) {
                        setState(() {
                          myPass = value; // Menyimpan nilai yang dibaca
                        });
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),

            // OUTPUT TEXT (Dibawah Tombol, FIX 4: Ditambahkan)
            Text(
              'Read Result: $myPass',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: myPass.isNotEmpty ? Colors.blue : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
