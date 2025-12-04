import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';

class GovernmentEntityField extends StatelessWidget {
  const GovernmentEntityField({super.key});

  @override
  Widget build(BuildContext context) {
    final entityController = TextEditingController();

    return AppCard(
      child: TextFieldWidget(
        labelText: "Government Entity",
        hintText: "Select entity",
        prefixIcon: Icons.account_balance_outlined,
        controller: entityController,
        obscureText: false,
      ),
    );
  }
}
