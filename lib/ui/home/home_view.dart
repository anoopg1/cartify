import 'package:cartify/core/colors.dart';
import 'package:cartify/core/ui_helpers.dart';
import 'package:cartify/gen/assets.gen.dart';
import 'package:cartify/ui/home/home_viewmodel.dart';
import 'package:cartify/widgets/carouselslider_widget.dart';
import 'package:cartify/widgets/category_widget.dart';
import 'package:cartify/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      onViewModelReady: (viewModel) => viewModel.initFunctions(),
      viewModelBuilder: () => HomeViewmodel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: Assets.images.smallLogo.image(height: 30),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            children: [
              Column(
                children: [
                  HorizontalImageSlider(
                    images: viewModel.carouselWidgets,
                    height: screenHeight(context) * 0.20,
                    width: screenWidth(context),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Category",
                          style: TextStyle(
                            color: kblack,
                            fontWeight: FontWeight.bold,
                            fontSize: getResponsiveMassiveFontSize(context),
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                              color: klightGreen,
                              fontSize: getResponsiveMassiveFontSize(context),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  // Category
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 8,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) => const CategoryWidget(
                        categoryName: "Fragrances",
                        imageUrl:
                            "https://images.unsplash.com/photo-1557170334-a9632e77c6e4?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcmZ1bWV8ZW58MHx8MHx8fDA%3D"),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 8,
                      bottom: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular",
                          style: TextStyle(
                            color: kblack,
                            fontWeight: FontWeight.bold,
                            fontSize: getResponsiveMassiveFontSize(context),
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                              color: klightGreen,
                              fontSize: getResponsiveMassiveFontSize(context),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  // Popular Product List
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 2,
                      // crossAxisSpacing: 2,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) => ProductWidget(
                      brand: viewModel.productlist![index].brand.toString(),
                      product:
                          viewModel.productlist![index].description.toString(),
                      offerprice:
                          viewModel.productlist![index].price.toString(),
                      mrpPrice: viewModel.productlist![index].price.toString(),
                      imageUrl:
                          viewModel.productlist![index].images![0].toString(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
