import 'package:cartify/ui/search_page/search_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SearchPageView extends StatelessWidget {
  const SearchPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SearchPageViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
