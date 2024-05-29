import 'package:cartify/core/colors.dart';
import 'package:cartify/core/ui_helpers.dart';
import 'package:cartify/gen/assets.gen.dart';
import 'package:cartify/ui/get_started/get_started_viewmodel.dart';
import 'package:cartify/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => GetStartedViewmodel(),
      builder: (context, viewModel, child) => Scaffold(
        backgroundColor: klightGreen,
        body: Stack(
          children: [
            Positioned(
              top: screenHeight(context) * 0.30,
              left: screenWidth(context) * 0.32,
              child: Assets.images.logo.image(
                  height: screenHeight(context) * 0.35,
                  width: screenWidth(context) * 0.35),
            ),
            Positioned(
              bottom: screenHeight(context) * 0.10,
              left: screenWidth(context) * 0.15,
              child: CustomButton(
                height: screenHeight(context) * 0.060,
                width: screenWidth(context) * 0.70,
                buttonColor: kmediumWhite,
                textColor: kdarkGreen,
                buttonText: "GET STARTED",
                onpressed: () {
                  viewModel.navigateToLoginSignupPage();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
