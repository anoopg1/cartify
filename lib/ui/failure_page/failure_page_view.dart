import 'package:cartify/ui/failure_page/failure_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class FailurePageView extends StatelessWidget {
  const FailurePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => FailurePageViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
