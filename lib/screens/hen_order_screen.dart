import 'package:flutter/material.dart';

class HenOrderScreen extends StatelessWidget {
  final String name;
  final String location;
  final String contact;

  HenOrderScreen({required this.name, required this.location, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $name'),
            Text('Location: $location'),
            Text('Contact: $contact'),
            // Add other order details or buttons as needed
          ],
        ),
      ),
    );
  }
}
