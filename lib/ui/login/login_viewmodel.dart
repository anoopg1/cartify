import 'package:cartify/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewmodel extends BaseViewModel {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

// Function to check the user login details.
  Future checkUserCredentials(String userid, String password) async {
    navigateToLandingPage();
  }

// Function to navigate to Launch Screen
  void navigateToLandingPage() {
    NavigationService().navigateTo(Routes.landingPageView);
  }

// Function to navigate to signup screen
  void navigateToSignupScreen() {
    NavigationService().navigateTo(Routes.signupView);
  }

// Initial remember password status
  bool rememberPassword = false;

  // Function to remember password.
  void rememberPasswordStatus(value) {
    rememberPassword = value;
    notifyListeners();
  }

  // Function to reset password.
  void resetPassword() {}

  //Function to Login with gmail.
  Future loginWithGoogleAccount() async {}

  //Function to Login with facebook
  Future loginWithFacebook() async {}
}
