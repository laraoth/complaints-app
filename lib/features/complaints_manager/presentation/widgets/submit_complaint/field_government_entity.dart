import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/public_widgets/custom_dropdown.dart';
import '../../../logic/submit_complaint/submit_complaint_cubit.dart';

class GovernmentEntityField extends StatelessWidget {
  const GovernmentEntityField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SubmitComplaintCubit>();
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
            items: cubit.entityOfComplaint.map((e) => e.name).toList(),
            value: cubit.entityOfComplaint
                .firstWhere((e) => e.id == cubit.selectedEntityId)
                .name,
            hintText: "Select complaint Entity",
            onChanged: (value) {
              final selected = cubit.entityOfComplaint.firstWhere(
                (e) => e.name == value,
              );
              cubit.selectedEntityId = selected.id;
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
