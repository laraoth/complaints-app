import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';

class DrawerTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const DrawerTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 14.h),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.r),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
          child: Row(
            children: [
              Icon(icon, color: AppColors.primary, size: 28.sp),
              SizedBox(width: 14.w),
              Text(
                title,
                style: AppTextStyles.title.copyWith(
                  color: AppColors.primary,
                  fontSize: 18.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
