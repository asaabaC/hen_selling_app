import 'package:flutter/material.dart';
import '../mock_data.dart'; // Import mock_data.dart to use mockProducts
import 'product_details_page.dart'; // Import the ProductDetailsPage

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key}); // Add const constructor for performance improvement

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Poultry Products"),
      ),
      body: ListView.builder(
        itemCount: mockProducts.length, // mockProducts should be defined in mock_data.dart
        itemBuilder: (context, index) {
          final product = mockProducts[index];
          return Card(
            margin: const EdgeInsets.all(10), // Added const to improve performance
            child: ListTile(
              leading: Image.asset(
                product.imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(product.name),
              subtitle: Text(product.description),
              trailing: Text("\$${product.price.toStringAsFixed(2)}"),
              onTap: () {
                // Navigate to product details when tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsPage(product: product),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
