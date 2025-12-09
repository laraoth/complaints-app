import 'package:complaintsapp/core/helpers/extentions.dart';
import 'package:complaintsapp/core/helpers/spacing.dart';
import 'package:complaintsapp/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/shared_pref_keys.dart';
import '../../../core/constants/text_styles.dart';
import '../../../core/helpers/app_shared_preferences.dart';

class DrawerHeaderSection extends StatelessWidget {
  const DrawerHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final sharedPref = AppSharedPreferences();
    final String userName =
        sharedPref.getString(AppSharedPrefKeys.name) ?? "User Name";
    final String userEmail =
        sharedPref.getString(AppSharedPrefKeys.email) ?? "user@email.com";
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.primaryColor.withValues(alpha: 0.1),
          radius: 20.r,
          child: Icon(Icons.person, size: 20.sp, color: AppColors.primaryColor),
        ),
        horizontalSpace(5),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: AppTextStyles.font20BlackColorBold.copyWith(
                    fontSize: 18,
                  ),
                ),
                verticalSpace(4),
                Text(
                  userEmail,
                  style: AppTextStyles.font14SecondaryTextRegular,
                ),
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
            ),
          ],
        ),
      ],
    );
  }
}
