import 'package:cartify/ui/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class ScreenCategory extends StatelessWidget {
  const ScreenCategory({super.key});

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
        title: const Text("Category",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            )),
        centerTitle: true,
      ),
      body: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, ),
            itemCount: categoryImage.length,
        itemBuilder: (context, index) => CategoryWidget(
            imageUrl: categoryImage[index], category: categoryName[index]),
      ),
    );
  }
}
