// mock_data.dart
import '../models/product.dart'; // Updated the path for clarity

// List of mock products
List<Product> mockProducts = [
  Product(
    name: "Brown Hen",
    description: "A healthy brown hen, perfect for laying eggs.",
    price: 15.0,
    imageUrl: "assets/hens-head-close-up_181624-1232.jpg", // Ensure the image is in your assets folder
    stock: 10,
  ),
  Product(
    name: "White Eggs",
    description: "Freshly laid white eggs, organic and farm-raised.",
    price: 3.5,
    imageUrl: "assets/organic-eggs-eggshells-metallic-bowl-black-surface_114579-16175.jpg", // Ensure the image is in your assets folder
    stock: 50,
  ),
  // Additional products can be added here
];
