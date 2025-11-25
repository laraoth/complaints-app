import 'package:complaintsapp/core/constants/app_colors.dart';
import 'package:complaintsapp/core/constants/app_text_styles.dart';
import 'package:complaintsapp/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don’t have an account? ", style: AppTextStyles.hint),
            GestureDetector(
              onTap: () {
                context.push(Routes.signUpScreen);
              },
              child: Text(
                "Register Now",
                style: AppTextStyles.hint.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
