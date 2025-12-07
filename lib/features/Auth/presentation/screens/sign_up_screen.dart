import 'package:complaintsapp/core/helpers/extentions.dart';
import 'package:complaintsapp/core/helpers/spacing.dart';
import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:complaintsapp/core/public_widgets/loading_widget.dart';
import 'package:complaintsapp/core/routing/routes.dart';
import 'package:complaintsapp/features/auth/presentation/widgets/signup_footer.dart';
import 'package:complaintsapp/features/auth/presentation/widgets/signup_header.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';
import 'package:complaintsapp/core/public_widgets/app_button_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/input_validation_type.dart';
import '../../../../core/public_widgets/snack_bar_widget.dart';
import '../../logic/signup/signup_cubit.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool visibility = true;
  bool confirmPassVisibility = true;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignupCubit>();

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SignUpHeader(),
            Transform.translate(
              offset: const Offset(0, -40),
              child: AppCard(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 25,
                ),
                child: Form(
                  key: cubit.formKey,
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
                        controller: cubit.nameController,
                        labelText: "Full Name",
                        hintText: "Enter your Name",
                        prefixIcon: Icons.email_outlined,
                        obscureText: false,
                        validationType: InputValidationType.username,
                      ),
                      verticalSpace(20),
                      TextFieldWidget(
                        controller: cubit.emailController,
                        labelText: "Email Address",
                        hintText: "Enter your email",
                        prefixIcon: Icons.email_outlined,
                        obscureText: false,
                        validationType: InputValidationType.email,
                      ),
                      verticalSpace(20),
                      TextFieldWidget(
                        controller: cubit.phoneController,
                        labelText: "Phone Number",
                        hintText: "Enter Phone Number",
                        prefixIcon: Icons.email_outlined,
                        obscureText: false,
                        validationType: InputValidationType.phone,
                      ),
                      verticalSpace(20),
                      TextFieldWidget(
                        controller: cubit.passwordController,
                        labelText: "Password",
                        hintText: "Enter your password",
                        prefixIcon: Icons.lock_outline,
                        obscureText: visibility ? true : false,
                        suffixIcon: visibility
                            ? Icons.remove_red_eye
                            : Icons.visibility_off,
                        onPressedSuffixIcon: () {
                          setState(() {
                            visibility = !visibility;
                          });
                        },
                        validationType: InputValidationType.password,
                      ),
                      verticalSpace(20),
                      TextFieldWidget(
                        controller: cubit.passwordConfirmationController,
                        labelText: "Confirm Password",
                        hintText: "Enter your password",
                        prefixIcon: Icons.lock_outline,
                        obscureText: confirmPassVisibility ? true : false,
                        suffixIcon: confirmPassVisibility
                            ? Icons.remove_red_eye
                            : Icons.visibility_off,
                        onPressedSuffixIcon: () {
                          setState(() {
                            confirmPassVisibility = !confirmPassVisibility;
                          });
                        },
                        validationType: InputValidationType.password,
                      ),
                      verticalSpace(25),
                      BlocConsumer<SignupCubit, SignupState>(
                        listener: (context, state) {
                          state.whenOrNull(
                            success: (signupResponse) {
                              showAppSnackBar(context, signupResponse.message);
                              context.pushNamed(Routes.verifyOtpScreen);
                            },
                            error: (error) =>
                                showAppSnackBar(context, error.toString()),
                          );
                        },
                        builder: (context, state) {
                          return state.maybeWhen(
                            loading: () => const LoadingWidget(),

                            orElse: () => AppButton(
                              text: "Create Account",
                              onPressed: () {
                                if (cubit.formKey.currentState!.validate()) {
                                  cubit.signup();
                                }
                              },
                            ),
                          );
                        },
                      ),
                      verticalSpace(20),
                      const SignUpFooter(),
                    ],
                  ),
                ),
              ),
            ),
            verticalSpace(25),
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
