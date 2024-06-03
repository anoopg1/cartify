import 'package:cartify/core/colors.dart';
import 'package:cartify/core/ui_helpers.dart';
import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  const CartWidget(
      {super.key,
      required this.product,
      required this.price,
      required this.quantity,
      required this.imageUrl});

  final String product;
  final String price;
  final int quantity;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenHeight(context) * 0.11,
          width: screenWidth(context) * 0.93,
          decoration: const BoxDecoration(color: Colors.transparent),
        ),
        Positioned(
          bottom: 0,
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: screenHeight(context) * 0.10,
              width: screenWidth(context) * 0.92,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: screenHeight(context) * 0.08,
                          width: screenWidth(context) * 0.22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.amber,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(imageUrl),
                            ),
                          ),
                        ),
                        horizontalSpaceSmall,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product,
                              softWrap: false,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      getResponsiveMassiveFontSize(context)),
                            ),
                            Text(
                              price,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      getResponsiveMassiveFontSize(context)),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: screenHeight(context) * 0.037,
                      width: screenWidth(context) * 0.20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(29),
                          border: Border.all(width: 1, color: kblack)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.remove,
                            size: 15,
                          ),
                          Text(
                            quantity.toString(),
                            style: TextStyle(
                                fontSize:
                                    getResponsiveMassiveFontSize(context)),
                          ),
                          const Icon(
                            Icons.add,
                            size: 15,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: CircleAvatar(
            radius: 11,
            backgroundColor: kblack,
            child: Center(
              child: Icon(
                Icons.close,
                size: 13,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
