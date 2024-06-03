import 'package:cartify/core/colors.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget(
      {super.key, required this.currentIndex, required this.onChanged});
  final int currentIndex;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      currentIndex: currentIndex,
      onTap: (value) {
        onChanged(value);
      },
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          backgroundColor: klightGreen,
          icon: Icon(
            Icons.home_outlined,
            color: kwhite,
          ),
          label: "Home",
          activeIcon: Icon(
            Icons.home,
            color: kwhite,
          ),
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: kwhite,
            ),
            activeIcon: Icon(
              Icons.favorite,
              color: kwhite,
            ),
            label: "wishlist"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: kwhite,
            ),
            label: "cart",
            activeIcon: Icon(
              Icons.shopping_cart,
              color: kwhite,
            )),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_2_outlined,
            color: kwhite,
          ),
          label: "profile",
          activeIcon: Icon(
            Icons.person,
            color: kwhite,
          ),
        )
      ],
    );
  }
}
