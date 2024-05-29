import 'package:cartify/ui/payment_processing_animation/payment_processing_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PaymentProcessingView extends StatelessWidget {
  const PaymentProcessingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => PaymentProcessingViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
