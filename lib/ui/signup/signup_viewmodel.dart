import 'package:cartify/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignupViewmodel extends BaseViewModel {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  // Function to navigate to Launch Screen
  void navigateToLandingPage() {
    NavigationService().navigateTo(Routes.landingPageView);
  }

  //Function to Login with gmail.
  Future loginWithGoogleAccount() async {}

  //Function to Login with facebook
  Future loginWithFacebook() async {}

  // Function to navigate to login screen
  void navigateToLoginPage() {
    NavigationService().navigateTo(Routes.loginView);
  }
}
