import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class VerticalSliderDemo extends StatelessWidget {
  const VerticalSliderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        autoPlay: true,
      ),
      items: [
        SizedBox(
          child: Image.asset("assets/images/new_offer.png"),
        ),
        SizedBox(
          child: Image.asset("assets/images/watch.png"),
        ),
        SizedBox(
          child: Image.asset("assets/images/special_offer.png"),
        )
      ],
    );
  }
}
