import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import the HomeScreen widget

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}); // Constructor for WelcomeScreen widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold widget for app structure
      appBar: AppBar(
        // App bar with transparent background
        backgroundColor: Colors.transparent, // Transparent background
        title:const  Center(child:  Text('HM-5')), // Title of the app bar
      ),
      body: Container(
        // Container to hold the content
        width: MediaQuery.of(context).size.width, // Full width of the screen
        height: MediaQuery.of(context).size.height, // Full height of the screen
        decoration: const BoxDecoration(
          // Background decoration with gradient
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.yellow
            ], // Gradient colors from red to yellow
            begin: Alignment.topCenter, // Start gradient from top center
            end: Alignment.bottomCenter, // End gradient at bottom center
          ),
        ),
        child: Center(
          // Centered content vertically and horizontally
          child: Column(
            // Column to arrange child widgets vertically
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            children: [
              SizedBox(
                // SizedBox to set fixed width and height for the button
                width: 200, // Button width
                height: 50, // Button height
                child: ElevatedButton(
                  // ElevatedButton widget
                  onPressed: () {
                    // Navigate to the HomeScreen when the button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: const Text('Click here'), // Button text
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
