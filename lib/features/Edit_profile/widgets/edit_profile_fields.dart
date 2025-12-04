import 'package:complaintsapp/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/public_widgets/app_button_widget.dart';
import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors.dart';
import '../../../core/public_widgets/app_text_field_widget.dart';

class EditProfileFieldsWidget extends StatelessWidget {
  const EditProfileFieldsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final phoneNumberController = TextEditingController();

    return Column(
      children: [
        AppCard(
          child: Column(
            children: [
              CircleAvatar(
                radius: 40.r,
                backgroundColor: AppColors.primaryColor.withValues(alpha: 0.1),
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: AppColors.primaryColor,
                ),
              ),
              verticalSpace(20),
              TextFieldWidget(
                hintText: 'Full Name',
                keyboardType: TextInputType.name,
                controller: nameController,
                labelText: 'Edit Full Name',
                obscureText: false,
              ),
              verticalSpace(16),
              TextFieldWidget(
                hintText: 'Phone Number',
                keyboardType: TextInputType.phone,
                controller: phoneNumberController,
                labelText: 'Edit Phone Number',
                obscureText: false,
              ),
            ],
          ),
        ),
        verticalSpace(40),
        AppButton(
          text: 'Save Changes',
          onPressed: () {},
        )
      ],
    );
  }
}
