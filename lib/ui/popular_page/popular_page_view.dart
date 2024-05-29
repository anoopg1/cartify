import 'package:cartify/ui/popular_page/popular_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PopularPageView extends StatelessWidget {
  const PopularPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => PopularPageViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
