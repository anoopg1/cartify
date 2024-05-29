import 'package:cartify/core/colors.dart';
import 'package:cartify/core/ui_helpers.dart';
import 'package:cartify/gen/assets.gen.dart';
import 'package:cartify/ui/splash_screen/splash_screen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SplashScreenViewmodel(),
      onViewModelReady: (viewModel) => viewModel.checkLoginStatus(),
      builder: (context, viewModel, child) => Scaffold(
        backgroundColor: klightGreen,
        body: Center(
          child: Assets.images.logo.image(
              height: screenHeight(context) * 0.35,
              width: screenWidth(context) * 0.35),
        ),
      ),
    );
  }
}
