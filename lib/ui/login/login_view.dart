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
              height: screenHeight(context) * 0.35,
              child: Center(
                child: Assets.images.logo.image(
                    height: screenHeight(context) * 0.30,
                    width: screenWidth(context) * 0.30),
              ),
            ),

            // WHITE CONTAINER
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: kwhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),

                // LOGIN WITH EMAIL AND PASSWORD
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 50, right: 50, top: 30, bottom: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "WELCOME BACK!",
                        style: TextStyle(
                            fontSize: getResponsiveFontSize(context,
                                fontSize: 45, max: 50),
                            fontWeight: FontWeight.w600),
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
                              // REMEMBER PASSWORD
                              Row(
                                children: [
                                  Checkbox(
                                    value: viewModel.rememberPassword,
                                    onChanged: (value) {
                                      viewModel.rememberPasswordStatus(value);
                                    },
                                  ),
                                  Text(
                                    "Remember me",
                                    style: TextStyle(
                                        fontSize:
                                            getResponsiveExtraLargeFontSize(
                                                context)),
                                  )
                                ],
                              ),

                              // FORGET PASSWORD
                              TextButton(
                                onPressed: () {
                                  viewModel.resetPassword();
                                },
                                child: Text(
                                  "Forget Password?",
                                  style: TextStyle(
                                      color: kblack,
                                      fontWeight: FontWeight.w600,
                                      fontSize: getResponsiveExtraLargeFontSize(
                                          context)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      // LOGIN BUTTON
                      CustomButton(
                        height: screenHeight(context) * 0.045,
                        width: screenWidth(context) * 0.82,
                        buttonColor: kdarkGreen,
                        textColor: kwhite,
                        buttonText: "LOGIN",
                        onpressed: () {
                          viewModel.navigateToLandingPage();
                        },
                      ),
                      const Text("or"),

                      // LOGIN WITH GOOGLE OR FACEBOOK
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              viewModel.loginWithFacebook();
                            },
                            child: Assets.images.fbLogo.image(height: 40),
                          ),
                          horizontalSpaceMedium,
                          InkWell(
                            onTap: () {
                              viewModel.loginWithGoogleAccount();
                            },
                            child: Assets.images.googleLogo.image(height: 40),
                          ),
                        ],
                      ),

                      // SIGNUP TEXT BUTTON
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don’t have an account? ",
                            style: TextStyle(
                                fontSize:
                                    getResponsiveExtraLargeFontSize(context)),
                          ),
                          InkWell(
                            onTap: () => viewModel.navigateToSignupScreen(),
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize:
                                      getResponsiveExtraLargeFontSize(context),
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
