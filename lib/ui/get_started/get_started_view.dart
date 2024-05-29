import 'package:cartify/ui/get_started/get_started_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => GetStartedViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
