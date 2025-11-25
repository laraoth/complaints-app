import 'package:complaintsapp/core/constants/app_colors.dart';
import 'package:complaintsapp/core/constants/app_text_styles.dart';
import 'package:complaintsapp/core/public_widgets/app_button_widget.dart';
import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';
import 'package:complaintsapp/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/login_header.dart';
import '../widgets/login_footer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LoginHeader(),
           Transform.translate(
  offset: const Offset(0, -30),
  child: AppCard(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            "Sign In",
            style: AppTextStyles.title.copyWith(fontSize: 18),
          ),
        ),
        const SizedBox(height: 20),

        AppTextField(
          label: "Email Address",
          hint: "Enter your email",
          icon: Icons.email_outlined,
        ),

        const SizedBox(height: 20),

        AppTextField(
          label: "Password",
          hint: "Enter your password",
          icon: Icons.lock_outline,
          obscureText: true,
          suffixIcon: const Icon(Icons.visibility_off),
        ),

        const SizedBox(height: 10),

        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Forgot Password?",
            style: AppTextStyles.label.copyWith(
              color: AppColors.primary,
            ),
          ),
        ),

        const SizedBox(height: 20),

        AppButton(text: "Sign In", onPressed: () {
             context.push(Routes.homeScreen);
        }),

        const SizedBox(height: 20),

        const LoginFooter(),
      ],
    ),
  ),
),

            const SizedBox(height: 25),
            Text(
              "Secure • Confidential • Efficient",
              style: AppTextStyles.footer,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
