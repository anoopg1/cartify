import 'package:cartify/ui/category/screen_category.dart';
import 'package:cartify/ui/home/widgets/courosel_widget.dart';
import 'package:cartify/ui/widgets/bottom_navigation_widget.dart';
import 'package:cartify/ui/widgets/category_widget.dart';
import 'package:cartify/ui/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: const Color(0xFFF0F0EF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF0F0EF),
        title: Image.asset(
          "assets/images/small_logo.png",
          height: 30,
          width: 30,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              iconSize: 30,
              color: Color(0xFF317773),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: const Color(0xFFF0F0EF),
            height: deviceHeight * 0.25,
            width: double.infinity,
            child: VerticalSliderDemo(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF317773)),
              ),
              const SizedBox(width: 8),
              Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF317773)),
              ),
              const SizedBox(width: 8),
              Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF317773)),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Category",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ScreenCategory(),
                    ));
                  },
                  child: const Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xFF317773)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryWidget(
                    imageUrl: categoryImage[0], category: categoryName[0]),
                CategoryWidget(
                    imageUrl: categoryImage[1], category: categoryName[1]),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xFF317773)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              children: const [
                ProductWidget(
                    imageUrl: "assets/images/nike.png",
                    brand: "Nike",
                    productName: "Nike Air Max AP ",
                    offerPrice: "₹6,000",
                    price: "₹8,000"),
                ProductWidget(
                    imageUrl: "assets/images/nike_blue.png",
                    brand: "Nike",
                    productName: "Nike Air Max AP ",
                    offerPrice: "₹6,000",
                    price: "₹8,000"),
                ProductWidget(
                    imageUrl: "assets/images/nike_blue.png",
                    brand: "Nike",
                    productName: "Nike Air Max AP ",
                    offerPrice: "₹6,000",
                    price: "₹8,000"),
                ProductWidget(
                    imageUrl: "assets/images/nike.png",
                    brand: "Nike",
                    productName: "Nike Air Max AP ",
                    offerPrice: "₹6,000",
                    price: "₹8,000"),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
