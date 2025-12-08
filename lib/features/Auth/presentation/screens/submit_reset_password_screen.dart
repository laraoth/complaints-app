import 'package:complaintsapp/core/helpers/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/input_validation_type.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/public_widgets/app_button_widget.dart';
import '../../../../core/public_widgets/app_field_card.dart';
import '../../../../core/public_widgets/app_text_field_widget.dart';
import '../../../../core/public_widgets/loading_widget.dart';
import '../../../../core/public_widgets/snack_bar_widget.dart';
import '../../../../core/routing/routes.dart';
import '../../logic/password_reset/password_reset_cubit.dart';
import '../widgets/login_header.dart';

class SubmitResetPasswordScreen extends StatefulWidget {
  final TextEditingController identifier;
  const SubmitResetPasswordScreen({super.key, required this.identifier});

  @override
  State<SubmitResetPasswordScreen> createState() =>
      _SubmitResetPasswordScreenState();
}

class _SubmitResetPasswordScreenState extends State<SubmitResetPasswordScreen> {
  bool isVisiblePass = true;
  bool isVisibleConfirmPass = true;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PasswordResetCubit>();

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LoginHeader(),
            Transform.translate(
              offset: const Offset(0, -30),
              child: AppCard(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 35,
                ),
                child: Form(
                  key: cubit.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Submit Reset Password",
                          style: AppTextStyles.font18BlackColorBold,
                        ),
                      ),
                      verticalSpace(10),
                      TextFieldWidget(
                        controller: widget.identifier,
                        labelText: "Email Address",
                        hintText: "Enter your Email",
                        prefixIcon: Icons.email_outlined,
                        obscureText: false,
                        validationType: InputValidationType.email,
                      ),
                      verticalSpace(10),
                      TextFieldWidget(
                        controller: cubit.otpController,
                        labelText: "Otp",
                        hintText: "Enter your Otp",
                        prefixIcon: Icons.numbers,
                        obscureText: false,
                        validationType: InputValidationType.number,
                        keyboardType: TextInputType.number,
                      ),
                      verticalSpace(10),
                      TextFieldWidget(
                        controller: cubit.passwordController,
                        labelText: "New Password",
                        hintText: "Enter New Password",
                        prefixIcon: Icons.password,
                        obscureText: isVisiblePass ? true : false,
                        validationType: InputValidationType.password,
                        suffixIcon: isVisiblePass
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        onPressedSuffixIcon: () => setState(() {
                          isVisiblePass = !isVisiblePass;
                        }),
                      ),
                      verticalSpace(10),
                      TextFieldWidget(
                        controller: cubit.confirmPasswordController,
                        labelText: "New Password",
                        hintText: "Confirm New Password",
                        prefixIcon: Icons.password,
                        obscureText: isVisibleConfirmPass ? true : false,
                        validationType: InputValidationType.password,
                        suffixIcon: isVisibleConfirmPass
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        onPressedSuffixIcon: () => setState(() {
                          isVisibleConfirmPass = !isVisibleConfirmPass;
                        }),
                      ),
                      verticalSpace(20),
                      BlocConsumer<PasswordResetCubit, PasswordResetState>(
                        listener: (context, state) {
                          state.whenOrNull(
                            successSubmitResetPass:
                                (submitResetPasswordResponse) {
                                  showAppSnackBar(
                                    context,
                                    submitResetPasswordResponse.message,
                                  );
                                  context.pushNamedAndRemoveUntil(
                                    Routes.loginScreen,
                                    predicate: (predictive) => false,
                                  );
                                },
                            error: (error) =>
                                showAppSnackBar(context, error.toString()),
                          );
                        },
                        builder: (context, state) {
                          return state.maybeWhen(
                            loading: () => const LoadingWidget(),
                            orElse: () => AppButton(
                              text: "Submit Reset",
                              onPressed: () {
                                if (cubit.formKey.currentState!.validate()) {
                                  cubit.submitResetPassword(widget.identifier);
                                }
                              },
                            ),
                          );
                        },
                      ),
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
