import 'package:complaintsapp/core/helpers/extentions.dart';
import 'package:complaintsapp/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';

class SignUpFooter extends StatelessWidget {
  final VoidCallback? onSignInTap;

  const SignUpFooter({super.key, this.onSignInTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Already have an account?",
              style: AppTextStyles.font14BlackRegular),
          const SizedBox(width: 5),
          GestureDetector(
            onTap: () {
              context.pushReplacementNamed(Routes.loginScreen);
            },
            child: Text(
              "Sign In",
              style: AppTextStyles.font14SecondaryTextRegular.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
