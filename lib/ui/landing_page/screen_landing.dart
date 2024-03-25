import 'package:cartify/ui/cart/cart.dart';
import 'package:cartify/ui/category/screen_category.dart';
import 'package:cartify/ui/home/screen_home.dart';
import 'package:cartify/ui/widgets/bottom_navigation_widget.dart';
import 'package:cartify/ui/wishlist/screen_wishlist.dart';
import 'package:flutter/material.dart';

class ScreenLanding extends StatelessWidget {
  const ScreenLanding({super.key});

  @override
  Widget build(BuildContext context) {
    final List pages = [
      ScreenHome(),
      ScreenWishlist(),
      ScreenCart(),
      ScreenWishlist()
    ];
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexNotifier,
        builder: (context, value, child) {
          return pages[value];
        },
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
