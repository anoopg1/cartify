import 'package:flutter/material.dart';

List<String> categoryImage = [
  "assets/images/category/mobile.jpg",
  "assets/images/category/laptop.jpg",
  "assets/images/category/perfume.jpg",
  "assets/images/category/skincare.jpg",
  "assets/images/category/homedecor.jpg",
  "assets/images/category/grocery.jpg",
];

List<String> categoryName = [
  "Mobile",
  "Laptop",
  "Perfume",
  "Skincare",
  "Homedecor",
  "Grocery",
];

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
      {super.key, required this.imageUrl, required this.category});

  final String imageUrl;
  final String category;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;

    return Column(
      children: [
        Container(
          height: deviceHeight * 0.20,
          width: deviceWidth * 0.45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                imageUrl,
              ),
            ),
          ),
        ),
        Text(
          category,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
