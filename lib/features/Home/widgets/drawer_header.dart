import 'package:complaintsapp/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';

class DrawerHeaderSection extends StatelessWidget {
  const DrawerHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.primary.withOpacity(0.1),
          radius: 36.r,
          child: Icon(Icons.person, size: 32.sp, color: AppColors.primary),
        ),
        SizedBox(width: 14.w),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "User Name",
                  style: AppTextStyles.title.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  "user@email.com",
                  style: AppTextStyles.label.copyWith(
                    color: AppColors.textLight,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.edit, size: 26.sp, color: AppColors.textDark),
                onPressed: () {
                  context.push(Routes.editProfileScreen);
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
