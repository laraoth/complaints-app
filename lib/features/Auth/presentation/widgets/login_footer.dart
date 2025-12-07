import 'package:complaintsapp/core/helpers/extentions.dart';
import 'package:complaintsapp/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don’t have an account? ",
                style: AppTextStyles.font14SecondartTextColorBold),
            GestureDetector(
              onTap: () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
              child: Text(
                "Register Now",
                style: AppTextStyles.font14SecondartTextColorBold.copyWith(
                  color: AppColors.primaryColor,
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
