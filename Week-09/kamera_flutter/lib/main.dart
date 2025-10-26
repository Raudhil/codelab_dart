import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'widget/takepicture_screen.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final firstCamera = cameras.isNotEmpty ? cameras.first : null;

    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: firstCamera != null
          ? TakePictureScreen(camera: firstCamera)
          : const Scaffold(
              body: Center(child: Text('No cameras found on this device')),
            ),
    );
  }
}
