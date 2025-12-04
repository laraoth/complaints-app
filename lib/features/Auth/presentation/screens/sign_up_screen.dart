import 'package:complaintsapp/core/helpers/extentions.dart';
import 'package:complaintsapp/core/helpers/spacing.dart';
import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:complaintsapp/core/routing/routes.dart';
import 'package:complaintsapp/features/auth/presentation/widgets/signup_footer.dart';
import 'package:complaintsapp/features/auth/presentation/widgets/signup_header.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';
import 'package:complaintsapp/core/public_widgets/app_button_widget.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/input_validation_type.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneNumberController = TextEditingController();
    final emailController = TextEditingController();
    final nameController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SignUpHeader(),
            Transform.translate(
              offset: const Offset(0, -40),
              child: AppCard(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Sign Up",
                        style: AppTextStyles.font18BlackColorBold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFieldWidget(
                      controller: nameController,
                      labelText: "Full Name",
                      hintText: "Enter your Name",
                      prefixIcon: Icons.email_outlined,
                      obscureText: false,
                      validationType: InputValidationType.email,
                    ),
                    verticalSpace(20),
                    TextFieldWidget(
                      controller: emailController,
                      labelText: "Email Address",
                      hintText: "Enter your email",
                      prefixIcon: Icons.email_outlined,
                      obscureText: false,
                      validationType: InputValidationType.email,
                    ),
                    verticalSpace(20),
                    TextFieldWidget(
                      controller: phoneNumberController,
                      labelText: "Phone Number",
                      hintText: "Enter Phone Number",
                      prefixIcon: Icons.email_outlined,
                      obscureText: false,
                      validationType: InputValidationType.phone,
                    ),
                    verticalSpace(20),
                    TextFieldWidget(
                      controller: passwordController,
                      labelText: "Password",
                      hintText: "Enter your password",
                      prefixIcon: Icons.lock_outline,
                      obscureText: true,
                      suffixIcon: Icons.visibility_off,
                      validationType: InputValidationType.password,
                    ),
                    verticalSpace(20),
                    TextFieldWidget(
                      controller: confirmPasswordController,
                      labelText: "Confirm Password",
                      hintText: "Enter your password",
                      prefixIcon: Icons.lock_outline,
                      obscureText: true,
                      suffixIcon: Icons.visibility_off,
                      validationType: InputValidationType.password,
                    ),
                    verticalSpace(25),
                    AppButton(
                        text: "Create Account",
                        onPressed: () {
                          context.pushNamed(Routes.homeScreen);
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
              style: AppTextStyles.font12DarkGreyColorRegular,
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
