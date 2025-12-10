import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/public_widgets/custom_dropdown.dart';
import '../../../logic/edit_and_delte_complaint/edit_and_delete_complaint_cubit.dart';
import '../../../logic/submit_complaint/submit_complaint_cubit.dart';

class GovernmentEntityField extends StatelessWidget {
  final bool isEdit;
  const GovernmentEntityField({super.key, required this.isEdit});

  @override
  Widget build(BuildContext context) {
    final submitCubit = context.read<SubmitComplaintCubit>();
    final editCubit = context.read<EditAndDeleteComplaintCubit>();
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Choose Goverment Entity to Send Complaint",
            style: AppTextStyles.font10LightGrayishTaupeColorMedium,
          ),
          verticalSpace(15),
          CustomDropdown(
            items: isEdit
                ? editCubit.entityOfComplaint.map((e) => e.name).toList()
                : submitCubit.entityOfComplaint.map((e) => e.name).toList(),
            value: isEdit
                ? editCubit.entityOfComplaint
                      .firstWhere((e) => e.id == editCubit.selectedEntityId)
                      .name
                : submitCubit.entityOfComplaint
                      .firstWhere((e) => e.id == submitCubit.selectedEntityId)
                      .name,
            hintText: "Select complaint Entity",
            onChanged: (value) {
              final selected = isEdit
                  ? editCubit.entityOfComplaint.firstWhere(
                      (e) => e.name == value,
                    )
                  : submitCubit.entityOfComplaint.firstWhere(
                      (e) => e.name == value,
                    );
              isEdit
                  ? editCubit.selectedEntityId = selected.id
                  : submitCubit.selectedEntityId = selected.id;
            },
            validator: (value) {
              if (value == null) {
                return "Please Choose Entity of Complaint";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
