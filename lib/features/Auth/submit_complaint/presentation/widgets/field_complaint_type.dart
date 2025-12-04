import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';
import 'package:flutter/material.dart';

class ComplaintTypeField extends StatelessWidget {
  const ComplaintTypeField({super.key});

  @override
  Widget build(BuildContext context) {
    final typeController = TextEditingController();
    return AppCard(
      child: TextFieldWidget(
        labelText: "Type of Complaint",
        hintText: "Select complaint type",
        prefixIcon: Icons.list_alt_outlined,
        controller: typeController,
        obscureText: false,
      ),
    );
  }
}
