import 'package:complaintsapp/core/helpers/extentions.dart';
import 'package:complaintsapp/core/helpers/spacing.dart';
import 'package:complaintsapp/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/text_styles.dart';

class DrawerHeaderSection extends StatelessWidget {
  const DrawerHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.primaryColor.withValues(alpha: 0.1),
          radius: 36.r,
          child: Icon(Icons.person, size: 32.sp, color: AppColors.primaryColor),
        ),
        horizontalSpace(5),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "User Name",
                  style:
                      AppTextStyles.font20BlackColorBold.copyWith(fontSize: 18),
                ),
                SizedBox(height: 4.h),
                Text("user@email.com",
                    style: AppTextStyles.font14SecondaryTextRegular),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.edit, size: 26.sp, color: AppColors.textDark),
                onPressed: () {
                  context.pushNamed(Routes.editProfileScreen);
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
