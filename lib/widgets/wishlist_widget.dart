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
            color: Colors.grey.shade300,
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
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "₹$price",
                          style: TextStyle(fontWeight: FontWeight.bold),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Material(
//       borderRadius: BorderRadius.circular(10),
//       elevation: 4,
//       child: Container(
//         height: screenHeight(context) * 0.15,
//         width: screenWidth(context),
//         color: Colors.cyanAccent,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Expanded(
//                 flex: 6,
//                 child: Row(
//                   children: [
//                     Expanded(
//                       flex: 3,
//                       child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15),
//                             image: DecorationImage(
//                                 image: NetworkImage(
//                                     "https://i.imgur.com/cSytoSD.jpeg"))),
//                       ),
//                     ),
//                     const Expanded(
//                       flex: 5,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [Text("Classic Black HOodie"), Text("791")],
//                       ),
//                     ),
//                     Expanded(
//                       flex: 2,
//                       child: IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.favorite,
//                             color: klightGreen,
//                           )),
//                     )
//                   ],
//                 ),
//               ),
//               verticalSpaceSmall,
//               Expanded(
//                 flex: 3,
//                 child: CustomButton(
//                     height: screenHeight(context) * 0.070,
//                     width: screenWidth(context) * 0.80,
//                     buttonColor: klightGreen,
//                     textColor: Colors.white,
//                     buttonText: "Add to cart"),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
