import 'package:cartify/ui/payment_settings/payment_settings__viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PaymentSettingsView extends StatelessWidget {
  const PaymentSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => PaymentSettingsViewModel(),
      builder: (context, viewModel, child) => Scaffold(),
    );
  }
}
