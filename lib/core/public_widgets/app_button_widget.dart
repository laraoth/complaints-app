import 'package:complaintsapp/core/constants/app_colors.dart';
import 'package:complaintsapp/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';


class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyles.label.copyWith(color: AppColors.white),
      ),
    );
  }
}
