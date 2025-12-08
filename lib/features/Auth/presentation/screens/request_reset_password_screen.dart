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

class RequestResetPasswordScreen extends StatelessWidget {
  const RequestResetPasswordScreen({super.key});

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
                          "Request Password Reset",
                          style: AppTextStyles.font18BlackColorBold,
                        ),
                      ),
                      verticalSpace(10),
                      TextFieldWidget(
                        controller: cubit.identifierController,
                        labelText: "Email Address",
                        hintText: "Enter your Email",
                        prefixIcon: Icons.email_outlined,
                        obscureText: false,
                        validationType: InputValidationType.email,
                      ),
                      verticalSpace(20),
                      BlocConsumer<PasswordResetCubit, PasswordResetState>(
                        listener: (context, state) {
                          state.whenOrNull(
                            success: (requestResetPasswordResponse) {
                              showAppSnackBar(
                                context,
                                requestResetPasswordResponse.message,
                              );
                              context.pushNamed(
                                Routes.submitResetPasswordScreen,
                                arguments: cubit.identifierController,
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
                              text: "Request Reset",
                              onPressed: () {
                                if (cubit.formKey.currentState!.validate()) {
                                  cubit.requestResetPassword();
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
