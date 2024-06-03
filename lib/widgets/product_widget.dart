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
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: klightGreen,
                      )),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                brand,
                style: TextStyle(
                  color: kmediumTextGrey,
                  fontWeight: FontWeight.w700,
                  fontSize: getResponsiveExtraLargeFontSize(context),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                product,
                style: TextStyle(
                    fontSize: getResponsiveExtraLargeFontSize(context),
                    color: kblack,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Text(
                    "₹$offerprice",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getResponsiveMassiveFontSize(context),
                        color: kblack),
                  ),
                  horizontalSpaceSmall,
                  Text(
                    "₹$mrpPrice",
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontWeight: FontWeight.bold,
                      color: kmediumTextGrey,
                      fontSize: getResponsiveMassiveFontSize(context),
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
