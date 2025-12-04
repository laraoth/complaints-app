import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';

class DescriptionField extends StatelessWidget {
  const DescriptionField({super.key});

  @override
  Widget build(BuildContext context) {
    final descriptionController = TextEditingController();

    return AppCard(
      child: TextFieldWidget(
        labelText: "Description of Problem",
        hintText: "Describe the issue in detail...",
        prefixIcon: Icons.description_outlined,
        minLines: 4,
        maxLines: 5,
        controller: descriptionController,
        obscureText: false,
      ),
    );
  }
}
