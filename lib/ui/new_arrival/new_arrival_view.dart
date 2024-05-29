import 'package:cartify/ui/new_arrival/new_arrival_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class NewArrivalView extends StatelessWidget {
  const NewArrivalView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => NewArrivalViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
