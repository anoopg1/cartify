import 'package:cartify/ui/wishlist_page/wishlist_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WishlistPageView extends StatelessWidget {
  const WishlistPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => WishlistViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
