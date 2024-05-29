import 'dart:async';

import 'package:cartify/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashScreenViewmodel extends BaseViewModel {
  // Function to check the user is logged in!!

  Future checkLoginStatus() async {
    // If user is logged in navigate to Homescreen, else navigate to get started.
    Timer(
      Duration(seconds: 4),
      () {
        NavigationService().navigateTo(Routes.getStartedView);
      },
    );
  }
}
