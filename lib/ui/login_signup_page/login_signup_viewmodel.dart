import 'package:cartify/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginSignupViewmodel extends BaseViewModel {
  void navigateToLoginScreen() {
    NavigationService().navigateTo(Routes.loginView);
  }

  void navigateToSignupScreen() {
    NavigationService().navigateTo(Routes.signupView);
  }
}
