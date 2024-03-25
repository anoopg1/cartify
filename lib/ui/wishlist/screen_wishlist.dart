import 'package:cartify/ui/widgets/wishlist_widget.dart';
import 'package:flutter/material.dart';

class ScreenWishlist extends StatelessWidget {
  const ScreenWishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            size: 28,
            color: Color(0xFF317773),
          ),
        ),
        title: const Text("Wishlist",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            )),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => WishlistWidget(),
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: 2),
    );
  }
}
