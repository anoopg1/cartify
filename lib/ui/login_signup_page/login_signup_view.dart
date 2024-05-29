import 'package:cartify/core/colors.dart';
import 'package:cartify/core/ui_helpers.dart';
import 'package:cartify/gen/assets.gen.dart';
import 'package:cartify/ui/login_signup_page/login_signup_viewmodel.dart';
import 'package:cartify/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginSignupView extends StatelessWidget {
  const LoginSignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => LoginSignupViewmodel(),
      builder: (context, viewModel, child) => Scaffold(
        backgroundColor: klightGreen,
        body: Stack(
          children: [
            const SizedBox(
              height: double.infinity,
              width: double.infinity,
            ),
            Positioned(
              top: screenHeight(context) * 0.20,
              left: screenWidth(context) * 0.325,
              child: Assets.images.logo.image(
                  height: screenHeight(context) * 0.35,
                  width: screenWidth(context) * 0.35),
            ),
            Positioned(
              top: screenHeight(context) * 0.65,
              child: Container(
                height: screenHeight(context) * 0.35,
                width: screenWidth(context),
                decoration: const BoxDecoration(
                  color: kwhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 35),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                        height: screenHeight(context) * 0.060,
                        width: screenWidth(context) * 0.70,
                        buttonColor: kdarkGreen,
                        textColor: kwhite,
                        buttonText: "LOGIN",
                        onpressed: () {
                          viewModel.navigateToLoginScreen();
                        },
                      ),
                      CustomButton(
                        height: screenHeight(context) * 0.060,
                        width: screenWidth(context) * 0.70,
                        buttonColor: kwhite,
                        textColor: kdarkGreen,
                        borderColor: kdarkGreen,
                        buttonText: "SIGN UP",
                        onpressed: () {
                          viewModel.navigateToSignupScreen();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
