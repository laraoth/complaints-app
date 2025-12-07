import 'package:complaintsapp/core/constants/text_styles.dart';
import 'package:complaintsapp/core/helpers/spacing.dart';
import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/public_widgets/custom_dropdown.dart';
import '../../logic/submit_complaint_cubit.dart';

class ComplaintTypeField extends StatelessWidget {
  const ComplaintTypeField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SubmitComplaintCubit>();
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Choose Type Of Complaint",
            style: AppTextStyles.font10LightGrayishTaupeColorMedium,
          ),
          verticalSpace(15),
          CustomDropdown(
            items: cubit.typeOfComplaint.map((e) => e.name).toList(),
            value: cubit.typeOfComplaint
                .firstWhere((e) => e.id == cubit.selectedTypeId)
                .name,
            hintText: "Select complaint Type",
            onChanged: (value) {
              final selected = cubit.typeOfComplaint.firstWhere(
                (e) => e.name == value,
              );
              cubit.selectedTypeId = selected.id;
              cubit.selectedTypeName = value!;
              // print(cubit.selectedTypeName);
            },
            validator: (value) {
              if (value == null) {
                return "Please Choose Type of Complaint";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
