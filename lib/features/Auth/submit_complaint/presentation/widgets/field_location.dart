import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';

class LocationField extends StatelessWidget {
  const LocationField({super.key});

  @override
  Widget build(BuildContext context) {
    final locationController = TextEditingController();

    return AppCard(
      child: TextFieldWidget(
        labelText: "Location",
        hintText: "Enter location or address",
        prefixIcon: Icons.location_on_outlined,
        controller: locationController,
        obscureText: false,
      ),
    );
  }
}
