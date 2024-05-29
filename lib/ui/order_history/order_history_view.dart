import 'package:cartify/ui/order_history/order_history_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => OrderHistoryViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
