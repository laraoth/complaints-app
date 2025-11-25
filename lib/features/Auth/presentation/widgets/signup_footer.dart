import 'package:complaintsapp/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/constants/app_text_styles.dart';
import 'package:complaintsapp/core/constants/app_colors.dart';
import 'package:go_router/go_router.dart';

class SignUpFooter extends StatelessWidget {
  final VoidCallback? onSignInTap;

  const SignUpFooter({super.key, this.onSignInTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Already have an account?", style: AppTextStyles.label),
          const SizedBox(width: 5),

         GestureDetector(
              onTap: () {
                context.push(Routes.loginScreen);
              },
              child: Text(
                "Sign In",
                style: AppTextStyles.hint.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
