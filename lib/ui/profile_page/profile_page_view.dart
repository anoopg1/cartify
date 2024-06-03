import 'package:cartify/core/colors.dart';
import 'package:cartify/core/ui_helpers.dart';
import 'package:cartify/ui/profile_page/profile_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/profile_menu_widget.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ProfilePageViewmodel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          iconTheme: const IconThemeData(color: klightGreen, size: 20),
          centerTitle: true,
          title: Text(
            "Profile",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getResponsiveMassiveFontSize(context) * 1.1),
          ),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 10),
          child: ListView(
            children: [
              Container(
                height: screenHeight(context) * 0.10,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2022/10/17/15/02/photography-7527978_960_720.jpg"))),
              ),
              Center(
                  child: Text("Rony Paul Benny",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              getResponsiveMassiveFontSize(context) * 1.5))),
              Center(
                child: Text("ronypaul@gmail.com",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kmediumTextGrey,
                        fontSize: getResponsiveMassiveFontSize(context))),
              ),
              verticalSpaceMedium,
              Text(
                " Account Settings",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getResponsiveExtraLargeFontSize(context) * 1.5),
              ),
              Container(
                height: (viewModel.accountSettings.length + 1) * 41,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: kmediumTextGrey,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ProfileMenuWidget(
                      icon: viewModel.accountSettings[index].icon,
                      menuTitle: viewModel.accountSettings[index].menuTitle,
                      onpressed: () {}),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: viewModel.accountSettings.length,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                " Orders",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getResponsiveExtraLargeFontSize(context) * 1.5),
              ),
              Container(
                height: (viewModel.orders.length + 1) * 33,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: kmediumTextGrey,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ProfileMenuWidget(
                      icon: viewModel.orders[index].icon,
                      menuTitle: viewModel.orders[index].menuTitle,
                      onpressed: () {}),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: viewModel.orders.length,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                " General",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getResponsiveExtraLargeFontSize(context) * 1.5),
              ),
              Container(
                height: (viewModel.general.length + 1) * 42,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: kmediumTextGrey,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ProfileMenuWidget(
                      icon: viewModel.general[index].icon,
                      menuTitle: viewModel.general[index].menuTitle,
                      onpressed: () {}),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: viewModel.general.length,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: screenHeight(context) * 0.060,
                width: screenWidth(context) * 0.77,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.logout,
                      color: kwhite,
                      size: 16,
                    ),
                    Text(
                      "  Log Out",
                      style: TextStyle(
                          color: kmediumWhite,
                          fontWeight: FontWeight.bold,
                          fontSize:
                              getResponsiveExtraLargeFontSize(context) * 1.2),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
