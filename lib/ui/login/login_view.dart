import 'package:cartify/core/colors.dart';
import 'package:cartify/core/ui_helpers.dart';
import 'package:cartify/gen/assets.gen.dart';
import 'package:cartify/ui/login/login_viewmodel.dart';
import 'package:cartify/widgets/custom_button.dart';
import 'package:cartify/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => LoginViewmodel(),
      builder: (context, viewModel, child) => Scaffold(
        backgroundColor: klightGreen,
        body: Column(
          children: [
            SizedBox(
              height: screenHeight(context) * 0.30,
              child: Center(
                child: Assets.images.logo.image(
                    height: screenHeight(context) * 0.30,
                    width: screenWidth(context) * 0.30),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: kwhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 50, right: 50, top: 30, bottom: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "WELCOME BACK!",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                      CustomTextfield(
                        controller: viewModel.emailController,
                        hintText: "Email Id",
                        prefixIcon: const Icon(Icons.email),
                      ),
                      Column(
                        children: [
                          CustomTextfield(
                            controller: viewModel.passwordController,
                            hintText: "Password",
                            prefixIcon: const Icon(Icons.password),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: true,
                                    onChanged: (value) {},
                                  ),
                                  const Text("Remember me")
                                ],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Forget Password?",
                                  style: TextStyle(
                                      color: kblack,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      CustomButton(
                        height: screenHeight(context) * 0.050,
                        width: screenWidth(context) * 0.82,
                        buttonColor: kdarkGreen,
                        textColor: kwhite,
                        buttonText: "LOGIN",
                        onpressed: () {
                          viewModel.navigateToLandingPage();
                        },
                      ),
                      const Text("or"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.images.fbLogo.image(height: 50),
                          horizontalSpaceMedium,
                          Assets.images.googleLogo.image(height: 50),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don’t have an account? "),
                          InkWell(
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: klightGreen),
                            ),
                          )
                        ],
                      )
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
