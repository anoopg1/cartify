import 'package:cartify/ui/change_address/change_address_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ChangeAddressView extends StatelessWidget {
  const ChangeAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ChangeAddressViewmodel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
