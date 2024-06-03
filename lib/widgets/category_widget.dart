import 'package:cartify/core/colors.dart';
import 'package:cartify/core/ui_helpers.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
      {super.key, required this.categoryName, required this.imageUrl});
  final String imageUrl;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrl),
                  ),
                ),
              ),
            ),
          ),
          verticalSpaceTiny,
          Expanded(
            flex: 1,
            child: Text(
              categoryName,
              style: TextStyle(
                  fontSize: getResponsiveMassiveFontSize(context),
                  color: kblack,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
