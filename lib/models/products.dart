import 'package:flutter/material.dart';

class Product {
  final String title;
  final List<String> images;
  final List<Color> colors;

  final String price;
  final bool isFavourite, ispopular;

  Product(
      {required this.title,
      required this.images,
      required this.colors,
      required this.price,
      this.isFavourite = false,
      this.ispopular = false});
}

List<Product> demoProducts = [
  Product(
      title: "Addidas Shirt",
      images: ["assets/images/tshirt.png"],
      colors: [Colors.white],
      price: "7,000",
      isFavourite: true,
      ispopular: true),
  Product(
      title: "Wireless Headset",
      images: ["assets/images/wireless headset.png"],
      colors: [Colors.white],
      price: "15,000",
      isFavourite: true,
      ispopular: true),
  Product(
      title: "Yellow Shirt",
      images: ["assets/images/product 1 image.png"],
      colors: [Colors.white],
      price: " 5,000",
      isFavourite: true,
      ispopular: true),
  Product(
      title: "Nike Sneakers",
      images: ["assets/images/shoes2.png"],
      colors: [Colors.white],
      price: " 55,500",
      isFavourite: true,
      ispopular: true),
];
