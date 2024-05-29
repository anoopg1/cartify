import 'package:cartify/ui/cart_page/cart_view.dart';
import 'package:cartify/ui/get_started/get_started_view.dart';
import 'package:cartify/ui/home/home_view.dart';
import 'package:cartify/ui/landing_page/landing_page_view.dart';
import 'package:cartify/ui/login/login_view.dart';
import 'package:cartify/ui/login_signup_page/login_signup_view.dart';
import 'package:cartify/ui/profile_page/profile_page_view.dart';
import 'package:cartify/ui/signup/signup_view.dart';
import 'package:cartify/ui/splash_screen/splash_screen_view.dart';
import 'package:cartify/ui/wishlist_page/wishlist_page_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashScreenView),
    MaterialRoute(page: GetStartedView),
    MaterialRoute(page: LoginSignupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: LandingPageView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: WishlistPageView),
    MaterialRoute(page: CartView),
    MaterialRoute(page: ProfilePageView),
  ],
)
class App {}
