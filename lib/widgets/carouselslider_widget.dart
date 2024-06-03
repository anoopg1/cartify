import 'package:cartify/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class HorizontalImageSlider extends StatelessWidget {
  const HorizontalImageSlider(
      {Key? key,
      required this.images,
      required this.height,
      required this.width})
      : super(key: key);

  final List<Widget> images;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: FlutterCarousel(
        options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 10),
            viewportFraction: 0.9,
            enlargeCenterPage: true,
            slideIndicator: CircularSlideIndicator(
              currentIndicatorColor: kdarkGreen,
              indicatorBackgroundColor: klightGreen,
              itemSpacing: 14,
              indicatorRadius: 4,
            ),
            floatingIndicator: false,
            showIndicator: true),
        items: images,
      ),
    );
  }
}
