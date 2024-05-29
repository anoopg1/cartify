import 'package:cartify/ui/success_page/success_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SuccessPageView extends StatelessWidget {
  const SuccessPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SuccessPageViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
