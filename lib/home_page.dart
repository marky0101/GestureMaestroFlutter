import 'package:flutter/material.dart';
import 'detect_sign_language.dart'; // Import the DetectSignLanguagePage
import 'about.dart'; // Import the AboutPage
import 'feedback_support.dart'; // Import the FeedbackSupportPage

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gesture Maestro'),
      ),
      backgroundColor: const Color(0xFFECE7C1), // Set background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.all(20), // Add padding around the text
              child: const Text(
                'Gesture Maestro',
                style: TextStyle(
                  fontSize: 35, // Text size
                  fontWeight: FontWeight.bold, // Bold text
                  color: Colors.black, // Set text color
                ),
              ),
            ),
            const SizedBox(height: 20), // Space between text and buttons

            // Button for "Detect Sign Language"
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the Detect Sign Language page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetectSignLanguagePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE8A036), // Button color
                  foregroundColor: Colors.black, // Text color
                  minimumSize: const Size(double.infinity, 70), // Button size
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // Rounded corners
                  ),
                ),
                child: const Text(
                  'Detect Sign Language',
                  style: TextStyle(
                    fontSize: 25, // Text size
                  ),
                ),
              ),
            ),

            // Button for "About"
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the About page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE8A036),
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'About',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),

            // Button for "Feedback & Support"
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the Feedback & Support page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FeedbackSupportPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE8A036),
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'Feedback & Support',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
