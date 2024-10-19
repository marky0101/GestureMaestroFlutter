import 'package:flutter/material.dart';

class DetectSignLanguagePage extends StatelessWidget {
  const DetectSignLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECE7C1), // Set background color
      appBar: AppBar(
        title: const Text('Detect Sign Language'),
        backgroundColor:
            const Color(0xFFE8A036), // Match button color for consistency
      ),
      body: Column(
        children: [
          // Logo and Text Horizontal Layout
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Circular Image inside a Card (Logo)
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const SizedBox(
                    width: 50,
                    height: 50,
                    child: ClipOval(
                        // child: Image(
                        //   image: AssetImage(
                        //       'assets/Nitro_Wallpaper_01_3840x2400.jpg'), // Adjust to your image path
                        //   fit: BoxFit.cover,
                        // ),
                        ),
                  ),
                ),
                const SizedBox(width: 10),
                // Detect Sign Language Text
                const Text(
                  'Detect Sign Language',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          // Camera View Card
          Expanded(
            child: Card(
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: const SizedBox(
                width: double.infinity,
                height: double.infinity,
                // This would be the area where you integrate the camera stream
                // Placeholder for now
                child: Center(
                  child: Text(
                    'Camera View Placeholder',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),

          // TextView inside LinearLayout
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.all(10),
            height: 100,
            color: Colors.white, // White background as in XML
            child: const Center(
              child: Text(
                'Detect Sign Language Page', // Adding this text to match the test
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          // Bottom Buttons (Add and Clear)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add Button
                ElevatedButton(
                  onPressed: () {
                    // Handle Add button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE8A036),
                    minimumSize: const Size(170, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Add',
                    style: TextStyle(
                      fontFamily: 'sans-serif-smallcaps',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                // Clear Button
                ElevatedButton(
                  onPressed: () {
                    // Handle Clear button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE8A036),
                    minimumSize: const Size(170, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Clear',
                    style: TextStyle(
                      fontFamily: 'sans-serif-smallcaps',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
