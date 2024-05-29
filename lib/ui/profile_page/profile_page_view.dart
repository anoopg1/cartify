import 'package:cartify/ui/profile_page/profile_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ProfilePageViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
