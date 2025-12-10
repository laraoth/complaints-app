import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/edit_and_delte_complaint/edit_and_delete_complaint_cubit.dart';
import '../../../logic/submit_complaint/submit_complaint_cubit.dart';

class DescriptionField extends StatelessWidget {
  final bool isEdit;
  const DescriptionField({super.key, required this.isEdit});

  @override
  Widget build(BuildContext context) {
    final submitCubit = context.read<SubmitComplaintCubit>();
    final editCubit = context.read<EditAndDeleteComplaintCubit>();
    return AppCard(
      child: TextFieldWidget(
        labelText: "Description of Problem",
        hintText: "Describe the issue in detail...",
        prefixIcon: Icons.description_outlined,
        minLines: 4,
        maxLines: 5,
        controller: isEdit
            ? editCubit.descriptionController
            : submitCubit.descriptionController,
        obscureText: false,
      ),
    );
  }
}
