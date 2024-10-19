import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      backgroundColor: const Color(0xFFECE7C1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Logo and title
              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'About Gesture Maestro',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Description text
              const Text(
                'Gesture Maestro is an application designed to help users detect sign language gestures with ease. Our goal is to promote accessibility and communication through technology.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              // Additional information
              const Text(
                'Developed by: Gesture Maestro.Co',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              // const Text(
              //   'Version: 1.0.0', // If you want to show version info, uncomment this line
              //   style: TextStyle(
              //     fontSize: 16,
              //     color: Colors.black,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
