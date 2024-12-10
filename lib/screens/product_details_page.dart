import 'package:flutter/material.dart';
import '../models/product.dart'; // Ensure this import points to the Product model

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Use const to improve performance
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16.0), // Use const for fixed values
            Text(
              product.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Use const for TextStyle
            ),
            const SizedBox(height: 8.0), // Use const for fixed values
            Text(
              "\$${product.price.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 20, color: Colors.green), // Use const for TextStyle
            ),
            const SizedBox(height: 16.0), // Use const for fixed values
            Text(
              product.description,
              style: const TextStyle(fontSize: 16), // Use const for TextStyle
            ),
            const SizedBox(height: 16.0), // Use const for fixed values
            Text(
              "Stock: ${product.stock}",
              style: const TextStyle(fontSize: 16, color: Colors.grey), // Use const for TextStyle
            ),
          ],
        ),
      ),
    );
  }
}
