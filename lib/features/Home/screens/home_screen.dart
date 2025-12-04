import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/text_styles.dart';
import '../../../core/helpers/spacing.dart';
import '../widgets/home_drawer.dart';
import '../widgets/home_action_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.whiteColor),
        title: Text(
          'Home',
          style: AppTextStyles.font20BlackColorBold.copyWith(
            color: AppColors.whiteColor,
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
                style: AppTextStyles.font20BlackColorBold.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: 34.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "Choose an option to continue",
                style: AppTextStyles.font14BlackBold.copyWith(
                  color: AppColors.textLight,
                  fontSize: 16.sp,
                ),
              ),
              verticalSpace(40),
              const HomeActionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
