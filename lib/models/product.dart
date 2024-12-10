// models/product.dart
class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final int stock;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.stock,
  });
}
