import 'package:cartify/core/colors.dart';
import 'package:cartify/core/ui_helpers.dart';
import 'package:cartify/ui/wishlist_page/wishlist_viewmodel.dart';
import 'package:cartify/widgets/wishlist_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WishlistPageView extends StatelessWidget {
  const WishlistPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => WishlistViewmodel(),
        builder: (context, viewModel, child) => Scaffold(
            appBar: AppBar(
              centerTitle: true,
              automaticallyImplyLeading: true,
              iconTheme: IconThemeData(color: klightGreen),
              title: Text(
                "Wishlist",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getResponsiveMassiveFontSize(context)),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: WishlistWidget(
                  imageUrl:
                      "https://images.unsplash.com/photo-1557170334-a9632e77c6e4?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcmZ1bWV8ZW58MHx8MHx8fDA%3D",
                  product: "Perfume",
                  price: "1244"),
            )));
  }
}
