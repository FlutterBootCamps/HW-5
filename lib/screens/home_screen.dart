import 'package:flutter/material.dart';
import 'package:get_and_shared/helper/screen_helper.dart'; // Import helper library

class HomeScreen extends StatelessWidget {
  final textController = TextEditingController(); // Controller for text input

  HomeScreen({Key? key}) : super(key: key); // Constructor for HomeScreen widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold widget for app structure
      appBar: AppBar(
        // App bar with transparent background
        backgroundColor: Colors.transparent, // Transparent background
        title: const Text('Home Screen'), // Title of the app bar
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
              Colors.blue
            ], // Gradient colors from red to yellow
            begin: Alignment.topCenter, // Start gradient from top center
            end: Alignment.bottomCenter, // End gradient at bottom center
          ),
        ),
        child: Padding(
          // Padding around the content
          padding: const EdgeInsets.all(8.0), // 8.0 padding on all sides
          child: Column(
            // Column to arrange child widgets vertically
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center horizontally
            children: [
              TextFormField(
                // Text input field
                controller: textController, // Assign the controller
                onFieldSubmitted: (val) {
                  debugPrint(
                      val.toUpperCase()); // Print input text in uppercase
                },
                decoration: const InputDecoration(
                  // Input decoration
                  border: OutlineInputBorder(), // Border decoration
                  labelText: 'Enter your Name', // Label text
                ),
              ),
              const SizedBox(
                // SizedBox for spacing
                height: 20, // Height of 20 pixels
              ),
              OutlinedButton(
                // Button for saving data
                onPressed: () {
                  CacheData.setData(
                    // Save data to cache
                    key: 'user name',
                    value: textController.text,
                  );
                },
                child: const Text('Save'), // Button text
              ),
              const SizedBox(
                // SizedBox for spacing
                height: 15, // Height of 15 pixels
              ),
              OutlinedButton(
                // Button for retrieving data
                onPressed: () {
                  final userName = CacheData.getData(
                      key: 'user name'); // Get data from cache
                  showDialog(
                    // Show dialog with retrieved data
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Saved User Name'), // Dialog title
                        content:
                            Text(userName ?? 'No data found'), // Dialog content
                        actions: [
                          TextButton(
                            // OK button to dismiss dialog
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                            },
                            child: const Text('OK'), // Button text
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Get Data'), // Button text
              ),
            ],
          ),
        ),
      ),
    );
  }
}
