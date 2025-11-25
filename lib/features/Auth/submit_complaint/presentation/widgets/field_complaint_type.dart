import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';


class ComplaintTypeField extends StatelessWidget {
  const ComplaintTypeField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: AppTextField(
        label: "Type of Complaint",
        hint: "Select complaint type",
        icon: Icons.list_alt_outlined,
        isDropdown: true,
      ),
    );
  }
}
