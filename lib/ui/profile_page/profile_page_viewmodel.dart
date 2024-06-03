import 'package:cartify/model/profile_menu_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProfilePageViewmodel extends BaseViewModel {
  List<ProfileMenuModel> accountSettings = [
    ProfileMenuModel(menuTitle: "Edit Profile", icon: Icons.person),
    ProfileMenuModel(menuTitle: "Security", icon: Icons.lock),
    ProfileMenuModel(menuTitle: "Saved Address", icon: Icons.contact_page),
    ProfileMenuModel(menuTitle: "Payment settings", icon: Icons.credit_card),
  ];
  List<ProfileMenuModel> orders = [
    ProfileMenuModel(
        menuTitle: "Track Order", icon: Icons.location_on_outlined),
    ProfileMenuModel(menuTitle: "Order History", icon: Icons.history),
  ];

  List<ProfileMenuModel> general = [
    ProfileMenuModel(menuTitle: "Invite & Earn", icon: Icons.money),
    ProfileMenuModel(menuTitle: "Coupons", icon: Icons.local_offer_outlined),
    ProfileMenuModel(menuTitle: "Notifications", icon: Icons.notifications),
    ProfileMenuModel(menuTitle: "Help Center", icon: Icons.headphones),
  ];
}
