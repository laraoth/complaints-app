import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.symmetric(vertical: 40),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Column(
        children: [
          const Icon(Icons.shield, color: Colors.white, size: 40),
          const SizedBox(height: 10),
          Text("Citizen Portal",
              style: AppTextStyles.font20BlackColorBold
                  .copyWith(color: AppColors.whiteColor)),
          Text(
            "Government Complaints System",
            style: AppTextStyles.font14SecondaryTextRegular
                .copyWith(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
