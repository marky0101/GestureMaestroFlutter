import 'package:flutter/material.dart';
import 'package:gesture_maestro/home_page.dart'; // Import the HomePage from home_page.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gesture Maestro',
      theme: ThemeData(
        primarySwatch: createMaterialColor(const Color(0xFFECE7C1)),
      ),
      home: const HomePage(), // Load the HomePage here
    );
  }

  // Helper method to create a material color (if needed)
  MaterialColor createMaterialColor(Color color) {
    // Your color creation logic here
    return Colors.orange; // Placeholder
  }
}
