import 'package:cartify/ui/landing_page/landing_page_viewmodel.dart';
import 'package:cartify/widgets/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => LandingPageViewmodel(),
      builder: (context, viewModel, child) => Scaffold(
        body: viewModel.pages[viewModel.currentIndex],
        bottomNavigationBar: BottomNavigationBarWidget(
          currentIndex: viewModel.currentIndex,
          onChanged: (value) => viewModel.changeIndex(value),
        ),
      ),
    );
  }
}
