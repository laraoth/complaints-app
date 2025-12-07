import 'package:complaintsapp/core/helpers/spacing.dart';
import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../logic/submit_complaint_cubit.dart';

class AttachDocumentTile extends StatelessWidget {
  const AttachDocumentTile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<SubmitComplaintCubit, SubmitComplaintState>(
          builder: (context, state) {
            final cubit = context.read<SubmitComplaintCubit>();
            final pdf = cubit.pdfFile;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Attach Document",
                  style: AppTextStyles.font20BlackColorBold.copyWith(
                    fontSize: 14,
                  ),
                ),
                verticalSpace(12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      cubit.pickPdf();
                    },
                    icon: const Icon(
                      Icons.file_copy,
                      color: AppColors.primaryColor,
                    ),
                    label: Text(
                      pdf == null ? "Upload Document" : "Change Document",
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.background,
                      foregroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                if (pdf != null) ...[
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.picture_as_pdf,
                        size: 18,
                        color: AppColors.primaryColor,
                      ),
                      horizontalSpace(6),
                      Expanded(
                        child: Text(
                          pdf.path.split('/').last,
                          style: AppTextStyles.font14DarkGreyMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          cubit.clearPdf();
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 18,
                          color: AppColors.darkGreyColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
