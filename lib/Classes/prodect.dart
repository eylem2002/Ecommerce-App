import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });

  void toggleFavorite() {
    isFavourite = !isFavourite;
    
  }
}

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "ass/images/ps4_console_white_1.png",
      "ass/images/ps4_console_white_4.png",
      "ass/images/ps4_console_white_2.png",
      "ass/images/ps4_console_white_3.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "ass/images/tshirt.png",
      "ass/images/tshirt.png",
      "ass/images/tshirt.png",
      "ass/images/tshirt.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "ass/images/glap.png",
      "ass/images/glap.png",
      "ass/images/glap.png",
      "ass/images/glap.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "ass/images/shoes2.png",
      "ass/images/shoes2.png",
      "ass/images/shoes2.png",
      "ass/images/shoes2.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "shoes2 XC Omega - Polygon",
    price: 36.55,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),

];
