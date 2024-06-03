import 'package:cartify/ui/cart_page/cart_view.dart';
import 'package:cartify/ui/home/home_view.dart';
import 'package:cartify/ui/profile_page/profile_page_view.dart';
import 'package:cartify/ui/wishlist_page/wishlist_page_view.dart';
import 'package:stacked/stacked.dart';

class LandingPageViewmodel extends BaseViewModel {
  List pages = const [
    HomeView(),
    WishlistPageView(),
    CartView(),
    ProfilePageView()
  ];

// Bottom navigation bar initial index.
  int currentIndex = 0;

  // Function to change and update bottom navigation bar index.
  changeIndex(value) {
    currentIndex = value;
    notifyListeners();
  }
}
