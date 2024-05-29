import 'package:cartify/ui/checkout/checkout_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CheckoutViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
