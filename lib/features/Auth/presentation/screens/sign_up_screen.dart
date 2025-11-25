import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:complaintsapp/core/routing/routes.dart';
import 'package:complaintsapp/features/Auth/presentation/widgets/signup_footer.dart';
import 'package:complaintsapp/features/Auth/presentation/widgets/signup_header.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/constants/app_colors.dart';
import 'package:complaintsapp/core/constants/app_text_styles.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';
import 'package:complaintsapp/core/public_widgets/app_button_widget.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SignUpHeader(),
          Transform.translate(
  offset: const Offset(0, -40),
  child: AppCard(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            "Sign Up",
            style: AppTextStyles.title.copyWith(fontSize: 18),
          ),
        ),

        const SizedBox(height: 20),

        AppTextField(
          label: "Full Name",
          hint: "Enter your name",
          icon: Icons.person_outline,
        ),

        const SizedBox(height: 20),

        AppTextField(
          label: "Email Address",
          hint: "Enter your email",
          icon: Icons.email_outlined,
        ),

        const SizedBox(height: 20),

        AppTextField(
          label: "Phone Number",
          hint: "Enter your phone",
          icon: Icons.phone_outlined,
        ),

        const SizedBox(height: 20),

        AppTextField(
          label: "Password",
          hint: "Enter your password",
          icon: Icons.lock_outline,
          obscureText: true,
          suffixIcon: const Icon(Icons.visibility_off),
        ),

        const SizedBox(height: 20),

        AppTextField(
          label: "Confirm Password",
          hint: "Re-enter your password",
          icon: Icons.lock_outline,
          obscureText: true,
          suffixIcon: const Icon(Icons.visibility_off),
        ),

        const SizedBox(height: 25),

        AppButton(text: "Create Account", onPressed: () {
              context.push(Routes.homeScreen);
        }),

        const SizedBox(height: 20),

        const SignUpFooter(),
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
