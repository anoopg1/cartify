import 'package:cartify/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class GetStartedViewmodel extends BaseViewModel {
  void navigateToLoginSignupPage() {
    NavigationService().navigateTo(Routes.loginSignupView);
  }
}
