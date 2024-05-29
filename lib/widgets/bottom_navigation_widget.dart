import 'package:cartify/core/colors.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: klightGreen,
          ),
          label: "Home",
          activeIcon: Icon(
            Icons.home,
            color: klightGreen,
          ),
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: klightGreen,
            ),
            activeIcon: Icon(
              Icons.favorite,
              color: klightGreen,
            ),
            label: "wishlist"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: klightGreen,
            ),
            label: "cart",
            activeIcon: Icon(
              Icons.shopping_cart,
              color: klightGreen,
            )),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_2_outlined,
            color: klightGreen,
          ),
          label: "profile",
          activeIcon: Icon(
            Icons.person,
            color: klightGreen,
          ),
        )
      ],
    );
  }
}
