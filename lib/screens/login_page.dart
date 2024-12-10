import 'package:flutter/material.dart';
import 'hen_order_screen.dart';

class LoginPage extends StatelessWidget {
  // TextEditingControllers for user input
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();

  // Global key for form validation
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to Order For a Hen(s)'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Attach form key to the form widget
          child: SingleChildScrollView(  // Make the form scrollable
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Displaying the hen image
                Image.asset(
                  'assets/brown-hen-isolated-white-studio-shot_136670-2556.jpg',  // Make sure this path is correct in the `pubspec.yaml`
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 20),
                
                // Name TextField with validation
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'Enter Your Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                
                // Location TextField with validation
                TextFormField(
                  controller: _locationController,
                  decoration: const InputDecoration(
                    labelText: 'Enter Your Location',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your location';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                
                // Contact TextField with validation
                TextFormField(
                  controller: _contactController,
                  decoration: const InputDecoration(
                    labelText: 'Enter Your Contact',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your contact';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                
                // Elevated Button for submission
                ElevatedButton(
                  onPressed: () {
                    // Validate form before navigating
                    if (_formKey.currentState?.validate() ?? false) {
                      // If valid, navigate to HenOrderScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HenOrderScreen(
                            name: _nameController.text,
                            location: _locationController.text,
                            contact: _contactController.text,
                          ),
                        ),
                      );
                    } else {
                      // If invalid, show error dialog
                      _showErrorDialog(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: const Text('Login & Order'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Method to show error dialog
  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: const Text('Please fill all the fields'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
