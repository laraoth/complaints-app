import 'package:complaintsapp/features/complaints_manager/logic/edit_and_delte_complaint/edit_and_delete_complaint_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/public_widgets/app_field_card.dart';

class AttachPhotoTileEdit extends StatelessWidget {
  const AttachPhotoTileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<EditAndDeleteComplaintCubit, EditAndDeleteComplaintState>(
          builder: (context, state) {
            final cubit = context.read<EditAndDeleteComplaintCubit>();
            final image = cubit.image;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Attach Photo",
                  style: AppTextStyles.font20BlackColorBold.copyWith(
                    fontSize: 14,
                  ),
                ),
                verticalSpace(12),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      cubit.pickImage();
                    },
                    icon: const Icon(
                      Icons.upload,
                      color: AppColors.primaryColor,
                    ),
                    label: Text(
                      image == null ? "Upload Photo" : "Change Photo",
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.background,
                      foregroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),
                ),

                if (image != null) ...[
                  verticalSpace(8),
                  Row(
                    children: [
                      const Icon(
                        Icons.image,
                        size: 18,
                        color: AppColors.primaryColor,
                      ),
                      horizontalSpace(6),
                      Expanded(
                        child: Text(
                          image.path.split('/').last,
                          style: AppTextStyles.font14DarkGreyMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          cubit.clearImage();
                        },
                        icon: Icon(
                          Icons.close,
                          size: 18.dm,
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
