import 'package:complaintsapp/core/helpers/extentions.dart';
import 'package:complaintsapp/core/helpers/input_validation_type.dart';
import 'package:complaintsapp/core/helpers/spacing.dart';
import 'package:complaintsapp/core/public_widgets/app_button_widget.dart';
import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';
import 'package:complaintsapp/core/public_widgets/loading_widget.dart';
import 'package:complaintsapp/core/routing/routes.dart';
import 'package:complaintsapp/features/auth/logic/verify_otp/verify_otp_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/public_widgets/snack_bar_widget.dart';
import '../widgets/login_header.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<VerifyOtpCubit>();
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
                          "Verify Otp",
                          style: AppTextStyles.font18BlackColorBold,
                        ),
                      ),
                      verticalSpace(10),
                      TextFieldWidget(
                        controller: cubit.identifierController,
                        labelText: "Email Address",
                        hintText: "Enter your email",
                        prefixIcon: Icons.email_outlined,
                        obscureText: false,
                        validationType: InputValidationType.email,
                      ),
                      verticalSpace(20),
                      TextFieldWidget(
                        controller: cubit.otpController,
                        labelText: "Otp",
                        hintText: "Enter your Otp",
                        prefixIcon: Icons.lock_outline,
                        obscureText: false,
                        validationType: InputValidationType.number,
                        keyboardType: TextInputType.number,
                      ),
                      verticalSpace(10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Resend Otp",
                            style: AppTextStyles.font18BlackColorBold.copyWith(
                              color: AppColors.primaryColor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      verticalSpace(20),
                      BlocConsumer<VerifyOtpCubit, VerifyOtpState>(
                        listener: (context, state) {
                          state.whenOrNull(
                            success: (verifyResponse) {
                              showAppSnackBar(context, verifyResponse.message);
                              context.pushNamedAndRemoveUntil(
                                Routes.loginScreen,
                                predicate: (predictive) => false,
                              );
                            },
                            error: (error) {
                              cubit.startTimer();

                              showAppSnackBar(context, error.toString());
                            },
                          );
                        },
                        builder: (context, state) {
                          final seconds = cubit.remainingSeconds;

                          return state.maybeWhen(
                            loading: () => const LoadingWidget(),

                            orElse: () => AppButton(
                              text: seconds > 0 ? "Wait $seconds s" : "Verify",
                              onPressed: seconds > 0
                                  ? null
                                  : () async {
                                      if (cubit.formKey.currentState!
                                          .validate()) {
                                        await cubit.verify();
                                        // cubit.startTimer();
                                        // print("asdasd");
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
          ],
        ),
      ),
    );
  }
}
