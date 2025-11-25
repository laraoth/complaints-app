import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';


class LocationField extends StatelessWidget {
  const LocationField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: AppTextField(
        label: "Location",
        hint: "Enter location or address",
        icon: Icons.location_on_outlined,
      ),
    );
  }
}
