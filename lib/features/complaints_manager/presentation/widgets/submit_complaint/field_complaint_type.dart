import 'package:complaintsapp/core/constants/text_styles.dart';
import 'package:complaintsapp/core/helpers/spacing.dart';
import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/public_widgets/custom_dropdown.dart';
import '../../../logic/edit_and_delte_complaint/edit_and_delete_complaint_cubit.dart';
import '../../../logic/submit_complaint/submit_complaint_cubit.dart';

class ComplaintTypeField extends StatelessWidget {
  final bool isEdit;
  const ComplaintTypeField({super.key, required this.isEdit});

  @override
  Widget build(BuildContext context) {
    final submitCubit = context.read<SubmitComplaintCubit>();
    final editCubit = context.read<EditAndDeleteComplaintCubit>();
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
            items: isEdit
                ? editCubit.typeOfComplaint.map((e) => e.name).toList()
                : submitCubit.typeOfComplaint.map((e) => e.name).toList(),
            value: isEdit
                ? editCubit.typeOfComplaint
                      .firstWhere((e) => e.id == submitCubit.selectedTypeId)
                      .name
                : submitCubit.typeOfComplaint
                      .firstWhere((e) => e.id == submitCubit.selectedTypeId)
                      .name,
            hintText: "Select complaint Type",
            onChanged: (value) {
              final selected = isEdit
                  ? editCubit.typeOfComplaint.firstWhere((e) => e.name == value)
                  : submitCubit.typeOfComplaint.firstWhere(
                      (e) => e.name == value,
                    );
              isEdit
                  ? editCubit.selectedTypeId = selected.id
                  : submitCubit.selectedTypeId = selected.id;
              isEdit
                  ? editCubit.selectedTypeName = value!
                  : submitCubit.selectedTypeName = value!;
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
