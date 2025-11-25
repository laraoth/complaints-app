import 'package:complaintsapp/core/constants/app_colors.dart';
import 'package:complaintsapp/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final String? label;
  final String? hint;
  final IconData? icon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final VoidCallback? onTap;
  final bool readOnly;
  final bool isDropdown;
  final int? maxLines;
  final int? minLines;

  const AppTextField({
    super.key,
    this.label,
    this.hint,
    this.icon,
    this.suffixIcon,
    this.controller,
    this.obscureText = false,
    this.keyboardType,
    this.onTap,
    this.readOnly = false,
    this.isDropdown = false,
    this.maxLines,
    this.minLines,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: EdgeInsets.only(bottom: 6.h),
            child: Text(
              label!,
              style: AppTextStyles.label.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: AppColors.textLight.withOpacity(0.4),
            ),
          ),
          child: TextField(
            controller: controller,
            keyboardType: isDropdown ? TextInputType.none : keyboardType,
            obscureText: obscureText,
            readOnly: isDropdown ? true : readOnly,
            onTap: onTap,
            minLines: minLines,
            maxLines: maxLines ?? 1,
            style: AppTextStyles.label,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: AppTextStyles.label.copyWith(
                color: AppColors.textLight,
              ),
              border: InputBorder.none,
              prefixIcon:
                  icon != null ? Icon(icon, color: AppColors.textLight) : null,
              suffixIcon: suffixIcon ??
                  (isDropdown
                      ? Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: AppColors.textLight,
                        )
                      : null),
            ),
          ),
        ),
      ],
    );
  }
}
