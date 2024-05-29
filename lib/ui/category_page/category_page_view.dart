import 'package:cartify/ui/category_page/category_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CategoryPageView extends StatelessWidget {
  const CategoryPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CategoryViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
