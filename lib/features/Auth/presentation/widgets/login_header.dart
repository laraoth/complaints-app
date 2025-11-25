import 'package:complaintsapp/core/constants/app_colors.dart';
import 'package:complaintsapp/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.symmetric(vertical: 40),
      decoration:  BoxDecoration(
        color: AppColors.primary,
     
      ),
      child: Column(
        children: [
          const Icon(Icons.shield, color: Colors.white, size: 40),
          const SizedBox(height: 10),
          Text("Citizen Portal",
              style: AppTextStyles.title.copyWith(color: Colors.white)),
          Text(
            "Government Complaints System",
            style: AppTextStyles.hint.copyWith(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
