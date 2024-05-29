import 'package:cartify/ui/product_view_page/product_page_viewmodel.dart';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProductViewPageView extends StatelessWidget {
  const ProductViewPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ProductPageViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
