import 'package:cartify/widgets/cart_widget.dart';
import 'package:cartify/widgets/wishlist_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Sen',
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 200,
            ),
            CartWidget(
                product: "Black T-Shirt",
                price: "1233",
                quantity: 1,
                imageUrl: "https://i.imgur.com/9DqEOV5.jpeg"),
            WishlistWidget(
                imageUrl: "https://i.imgur.com/SolkFEB.jpeg",
                product: "Sleek Comfort-Fit Over-Ear Headphones",
                price: "2300"),
          ],
        ),
      ),
    );
  }
}
