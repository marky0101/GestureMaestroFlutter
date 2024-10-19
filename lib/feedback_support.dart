import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:logging/logging.dart';

class FeedbackSupportPage extends StatelessWidget {
  // Create a logger
  final Logger _logger = Logger('FeedbackSupportPage');

  FeedbackSupportPage({Key? key})
      : super(key: key); // Remove the 'const' keyword here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECE7C1), // Background color
      appBar: AppBar(
        title: const Text('Feedback & Support'),
        backgroundColor: const Color(
            0xFFE8A036), // Match the Android button color for consistency
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Outer padding for the page
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Logo and title section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Circular Image inside a Card
                  Card(
                    shape: const CircleBorder(),
                    elevation: 5,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Feedback & Support",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Rate your experience text
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Rate Your Experience",
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Satisfaction question text
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Are you satisfied with the services?",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),

              const SizedBox(height: 10),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  _logger.info('User rating: $rating'); // Log the rating
                },
              ),

              const SizedBox(height: 40),

              // Improvement question text
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Tell us what can be improved?",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Improvement textbox
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    maxLines: 8,
                    decoration: InputDecoration.collapsed(
                      hintText: "Type here...",
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Submit button
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 5,
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8A036),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _logger.info('Submit button pressed'); // Log submission
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
