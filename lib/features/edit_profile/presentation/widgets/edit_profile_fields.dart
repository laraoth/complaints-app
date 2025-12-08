import 'package:complaintsapp/core/helpers/extentions.dart';
import 'package:complaintsapp/core/helpers/spacing.dart';
import 'package:complaintsapp/core/public_widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/public_widgets/app_button_widget.dart';
import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/helpers/input_validation_type.dart';
import '../../../../core/public_widgets/app_text_field_widget.dart';
import '../../../../core/public_widgets/snack_bar_widget.dart';
import '../../logic/change_password_cubit.dart';

class EditProfileFieldsWidget extends StatelessWidget {
  const EditProfileFieldsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ChangePasswordCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          AppCard(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40.r,
                  backgroundColor: AppColors.primaryColor.withValues(
                    alpha: 0.1,
                  ),
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: AppColors.primaryColor,
                  ),
                ),
                verticalSpace(20),
                TextFieldWidget(
                  hintText: 'Current Password',
                  keyboardType: TextInputType.visiblePassword,
                  controller: cubit.currentPasswordController,
                  labelText: 'Enter Current Password',
                  obscureText: false,
                  validationType: InputValidationType.password,
                ),
                verticalSpace(16),
                TextFieldWidget(
                  hintText: 'New Password',
                  keyboardType: TextInputType.phone,
                  controller: cubit.newPasswordController,
                  labelText: 'Enter New Password',
                  obscureText: false,
                  validationType: InputValidationType.password,
                ),
                verticalSpace(16),
                TextFieldWidget(
                  hintText: 'Confirm New Password',
                  keyboardType: TextInputType.phone,
                  controller: cubit.newPasswordConfirmationController,
                  labelText: 'Confirm New Password',
                  obscureText: false,
                  validationType: InputValidationType.password,
                ),
              ],
            ),
          ),
          verticalSpace(40),
          BlocConsumer<ChangePasswordCubit, ChangePasswordState>(
            listener: (context, state) {
              state.whenOrNull(
                success: (loginResponse) {
                  showAppSnackBar(context, loginResponse.message);
                  context.pop();
                },
                error: (error) => showAppSnackBar(context, error.toString()),
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => const LoadingWidget(),
                orElse: () => AppButton(
                  text: 'Save Changes',
                  onPressed: () {
                    if (cubit.formKey.currentState!.validate()) {
                      cubit.changePassword();
                    }
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
