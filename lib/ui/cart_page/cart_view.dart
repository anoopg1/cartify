import 'package:cartify/ui/cart_page/cart_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CartViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
