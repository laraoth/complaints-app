import 'package:flutter/material.dart';
import 'package:complaintsapp/core/constants/app_colors.dart';
import 'package:complaintsapp/core/public_widgets/app_button_widget.dart';
import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:complaintsapp/core/public_widgets/app_text_field_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class EditProfileFieldsWidget extends StatelessWidget {
  const EditProfileFieldsWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppCard(
          child: Column(
            children: [
         
              CircleAvatar(
                radius: 40,
                backgroundColor: AppColors.primary.withOpacity(0.1),
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(height: 20.h),
              AppTextField(
                hint: 'Full Name',
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 16.h),
              AppTextField(
                hint: 'Phone Number',
                keyboardType: TextInputType.phone,
              ),
            ],
          ),
        ),
        SizedBox(height: 40.h),
        AppButton(
          text: 'Save Changes',
          onPressed: () {},
        )
      ],
    );
  }
}
