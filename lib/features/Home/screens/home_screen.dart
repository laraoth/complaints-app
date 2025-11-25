import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../widgets/home_drawer.dart';
import '../widgets/home_action_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.white),
        title: Text(
          'Home',
          style: AppTextStyles.title.copyWith(
            color: AppColors.white,
            fontSize: 20.sp,
          ),
        ),
        centerTitle: false,
      ),
      drawer: const HomeDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 60.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: AppTextStyles.title.copyWith(
                  color: AppColors.primary,
                  fontSize: 34.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "Choose an option to continue",
                style: AppTextStyles.label.copyWith(
                  color: AppColors.textLight,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 40.h),
              const HomeActionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
