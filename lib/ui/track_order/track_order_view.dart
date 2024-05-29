import 'package:cartify/ui/track_order/track_order_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TrackOrderView extends StatelessWidget {
  const TrackOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => TrackOrderViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
