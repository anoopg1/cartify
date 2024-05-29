import 'package:cartify/ui/login_signup_page/login_signup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginSignupView extends StatelessWidget {
  const LoginSignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => LoginSignupViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
