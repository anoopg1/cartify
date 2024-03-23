import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.imageUrl,
    required this.brand,
    required this.productName,
    required this.offerPrice,
    required this.price,
  });

  final String imageUrl;
  final String brand;
  final String productName;
  final String offerPrice;
  final String price;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;

    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        height: deviceHeight * 0.35,
        width: deviceWidth * 0.45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: deviceHeight * 0.13,
                width: deviceWidth * 0.49,
                decoration: BoxDecoration(
                  // color: Colors.red,
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
                brand,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(productName),
              Row(
                children: [
                  Text(
                    offerPrice,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    price,
                    style:
                        const TextStyle(decoration: TextDecoration.lineThrough),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
