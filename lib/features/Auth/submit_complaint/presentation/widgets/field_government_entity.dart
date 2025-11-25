import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';


class GovernmentEntityField extends StatelessWidget {
  const GovernmentEntityField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: AppTextField(
        label: "Government Entity",
        hint: "Select entity",
        icon: Icons.account_balance_outlined,
        isDropdown: true,
      ),
    );
  }
}
