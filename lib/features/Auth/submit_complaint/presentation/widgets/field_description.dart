import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';

class DescriptionField extends StatelessWidget {
  const DescriptionField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: AppTextField(
        label: "Description of Problem",
        hint: "Describe the issue in detail...",
        icon: Icons.description_outlined,
        minLines: 4,
        maxLines: 5,
      ),
    );
  }
}
