import 'package:cartify/core/colors.dart';
import 'package:cartify/core/ui_helpers.dart';
import 'package:cartify/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WishlistWidget extends StatelessWidget {
  const WishlistWidget(
      {super.key,
      required this.imageUrl,
      required this.product,
      required this.price});

  final String imageUrl;
  final String product;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: screenHeight(context) * 0.15,
        width: screenWidth(context) * 0.95,
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.only(top: 7, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                children: [
                  // image container
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: screenHeight(context) * 0.080,
                      width: screenWidth(context) * 0.010,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(imageUrl),
                        ),
                      ),
                    ),
                  ),
                  horizontalSpaceSmall,
                  // product name and price
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product,
                          softWrap: false,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: getResponsiveMassiveFontSize(context)),
                        ),
                        Text(
                          "₹$price",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: getResponsiveMassiveFontSize(context)),
                        )
                      ],
                    ),
                  ),
                  horizontalSpaceLarge,
                  // Iconbutton
                  const Expanded(
                    flex: 2,
                    child: InkWell(
                      child: Icon(
                        Icons.favorite,
                        color: klightGreen,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),

              verticalSpaceSmall,
              // Add to cart button
              CustomButton(
                height: screenHeight(context) * 0.040,
                width: screenWidth(context) * 0.90,
                buttonColor: klightGreen,
                textColor: Colors.white,
                buttonText: "Add to cart",
                onpressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
