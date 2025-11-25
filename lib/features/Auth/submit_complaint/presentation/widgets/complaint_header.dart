import 'package:complaintsapp/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/constants/app_colors.dart';
import 'package:complaintsapp/core/constants/app_text_styles.dart';
import 'package:go_router/go_router.dart';

class ComplaintHeader extends StatelessWidget {
  const ComplaintHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 45, left: 15, bottom: 25),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => context.push(Routes.homeScreen),
            child: Row(
              children: [
                const Icon(Icons.arrow_back, color: AppColors.white, size: 20),
                const SizedBox(width: 5),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Submit Complaint",
            style: AppTextStyles.title
                .copyWith(fontSize: 22, color: AppColors.white),
          ),
          Text("Fill in the details below",
              style: AppTextStyles.label.copyWith(color: AppColors.white)),
        ],
      ),
    );
  }
}
