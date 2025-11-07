import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  Color color = Colors.blue.shade700; 

  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Light Orange'),
              onPressed: () {
                color = const Color.fromARGB(255, 246, 156, 73);
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Light Red'),
              onPressed: () {
                color = const Color.fromARGB(255, 255, 106, 106);
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Magenta'),
              onPressed: () {
                color = const Color.fromARGB(255, 255, 61, 239);
                Navigator.pop(context, color);
              },
            ),
          ],
        ),
      ),
    );
  }
}
