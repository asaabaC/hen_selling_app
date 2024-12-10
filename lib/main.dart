import 'package:flutter/material.dart';
import 'screens/product_list_page.dart';
import 'screens/login_page.dart';
import 'screens/order_screen.dart';
import 'screens/confirmation_screen.dart';
import 'models/hen.dart'; // Import the Hen class

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hen Selling App',
      theme: ThemeData(
        primaryColor: Colors.orange, // Set primary color to orange
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.orangeAccent), // Updated accent color
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false, // Removes the debug banner in the top right
      initialRoute: '/', // Define the initial route (home screen)
      routes: {
        '/': (context) => const ProductListPage(),
       '/login': (context) => LoginPage(), // Remove the `const` keyword here

        // Passing an actual Hen object to the OrderScreen
        '/order': (context) => OrderScreen(
          hen: Hen(name: 'Brown Hen', price: 15.0, image: 'assets/images/brown_hen.png'),
          name: 'John Doe', 
          location: '123 Street', 
          contact: '123-456-7890',
        ),
        '/confirmation': (context) => const ConfirmationScreen(),
        // Add more screens/routes here
      },
    );
  }
}
