import 'package:complaintsapp/core/constants/colors.dart';
import 'package:complaintsapp/core/constants/text_styles.dart';
import 'package:complaintsapp/core/helpers/spacing.dart';
import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/edit_and_delte_complaint/edit_and_delete_complaint_cubit.dart';
import '../../../logic/submit_complaint/submit_complaint_cubit.dart';

class LocationField extends StatelessWidget {
  final bool isEdit;
  const LocationField({super.key, required this.isEdit});

  @override
  Widget build(BuildContext context) {
    final submitCubit = context.read<SubmitComplaintCubit>();
    final editCubit = context.read<EditAndDeleteComplaintCubit>();

    return AppCard(
      child: Column(
        children: [
          TextFieldWidget(
            labelText: "Location",
            hintText: "Enter location or address",
            prefixIcon: Icons.location_on_outlined,
            controller: isEdit
                ? editCubit.locationController
                : submitCubit.locationController,
            obscureText: false,
            readOnly: true,
          ),
          verticalSpace(8),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton.icon(
              onPressed: () => isEdit
                  ? editCubit.getCurrentLocation()
                  : submitCubit.getCurrentLocation(),
              icon: const Icon(
                Icons.my_location,
                color: AppColors.primaryColor,
              ),
              label: Text(
                "Use Current Location",
                style: AppTextStyles.font8GreenBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
