import 'package:complaintsapp/core/helpers/extentions.dart';
import 'package:complaintsapp/core/helpers/input_validation_type.dart';
import 'package:complaintsapp/core/helpers/spacing.dart';
import 'package:complaintsapp/core/public_widgets/app_button_widget.dart';
import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';
import 'package:complaintsapp/core/public_widgets/loading_widget.dart';
import 'package:complaintsapp/core/routing/routes.dart';
import 'package:complaintsapp/features/auth/logic/login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/public_widgets/snack_bar_widget.dart';
import '../widgets/login_header.dart';
import '../widgets/login_footer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool visibility = true;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
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
                          "Sign In",
                          style: AppTextStyles.font18BlackColorBold,
                        ),
                      ),
                      verticalSpace(10),
                      TextFieldWidget(
                        controller: cubit.identifierController,
                        labelText: "Email Address Or Phone Number",
                        hintText: "Enter your email Or Phone",
                        prefixIcon: Icons.email_outlined,
                        obscureText: false,
                        validationType: InputValidationType.emailOrPhone,
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
                      ),
                      verticalSpace(10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            //! go to fogot pass screen
                          },
                          child: Text(
                            "Forgot Password?",
                            style: AppTextStyles.font18BlackColorBold.copyWith(
                              color: AppColors.primaryColor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      verticalSpace(20),
                      BlocConsumer<LoginCubit, LoginState>(
                        listener: (context, state) {
                          state.whenOrNull(
                            success: (loginResponse) {
                              showAppSnackBar(context, loginResponse.message);
                              context.pushNamedAndRemoveUntil(
                                Routes.homeScreen,
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
                              text: "Sign In",
                              onPressed: () {
                                if (cubit.formKey.currentState!.validate()) {
                                  cubit.login();
                                }
                              },
                            ),
                          );
                        },
                      ),
                      verticalSpace(20),
                      const LoginFooter(),
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
