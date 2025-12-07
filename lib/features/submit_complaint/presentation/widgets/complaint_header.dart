import 'package:complaintsapp/core/helpers/extentions.dart';
import 'package:complaintsapp/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';

class ComplaintHeader extends StatelessWidget {
  const ComplaintHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 45, left: 15, bottom: 25),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => context.pushNamed(Routes.homeScreen),
            child: Row(
              children: [
                const Icon(Icons.arrow_back,
                    color: AppColors.whiteColor, size: 20),
                const SizedBox(width: 5),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Submit Complaint",
            style: AppTextStyles.font20BlackColorBold
                .copyWith(fontSize: 22, color: AppColors.whiteColor),
          ),
          Text("Fill in the details below",
              style: AppTextStyles.font14BlackRegular
                  .copyWith(color: AppColors.whiteColor)),
        ],
      ),
    );
  }
}
