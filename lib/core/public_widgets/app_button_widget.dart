import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final TextStyle? style;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDisabled = onPressed == null;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isDisabled
            ? AppColors.darkGreyColor
            : AppColors.primaryColor,
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style:
            style ??
            AppTextStyles.font14WhiteRegular.copyWith(
              color: isDisabled ? AppColors.blackColor : AppColors.whiteColor,
            ),
      ),
    );
  }
}
