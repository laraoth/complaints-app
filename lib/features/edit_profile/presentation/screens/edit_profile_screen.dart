import 'package:complaintsapp/core/helpers/extentions.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/features/edit_profile/presentation/widgets/edit_profile_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: AppColors.whiteColor,
          onPressed: () => context.pop(),
        ),
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: AppTextStyles.font20BlackColorBold
              .copyWith(color: AppColors.whiteColor),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 60.h),
        child: const EditProfileFieldsWidget(),
      ),
    );
  }
}
