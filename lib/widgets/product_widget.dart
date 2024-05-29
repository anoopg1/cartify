import 'package:cartify/core/colors.dart';
import 'package:cartify/core/ui_helpers.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget(
      {super.key,
      required this.brand,
      required this.product,
      required this.offerprice,
      required this.mrpPrice,
      required this.imageUrl});
  final String brand;
  final String product;
  final String offerprice;
  final String mrpPrice;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: klightGreen,
                      )),
                )
              ],
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrl),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                brand,
                style: const TextStyle(
                  color: kmediumTextGrey,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                product,
                style: const TextStyle(
                    fontSize: 17, color: kblack, fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Text(
                    "₹$offerprice",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: kblack),
                  ),
                  horizontalSpaceSmall,
                  Text(
                    "₹$mrpPrice",
                    style: const TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontWeight: FontWeight.bold,
                      color: kmediumTextGrey,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
