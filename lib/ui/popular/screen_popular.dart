import 'package:cartify/ui/widgets/category_widget.dart';
import 'package:cartify/ui/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class ScreenPopular extends StatelessWidget {
  const ScreenPopular({super.key});

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
        title: const Text("Popular",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            )),
        centerTitle: true,
      ),
      body: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,mainAxisSpacing: 4 ,crossAxisSpacing: 4),
            itemCount: 20,
        itemBuilder: (context, index) => ProductWidget(imageUrl: "assets/images/nike.png", brand: "Nike", productName: "Nike Air Max AP ", offerPrice: "₹3,500", price: "₹4,500")
      ),
    );
  }
}
