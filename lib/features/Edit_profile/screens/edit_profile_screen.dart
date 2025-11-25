import 'package:flutter/material.dart';
import 'package:complaintsapp/core/constants/app_colors.dart';
import 'package:complaintsapp/core/constants/app_text_styles.dart';
import 'package:complaintsapp/features/Edit_profile/widgets/edit_profile_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: AppColors.white,
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: AppTextStyles.title.copyWith(color: AppColors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 60.h),
        child: const EditProfileFieldsWidget(),
      ),
    );
  }
}
