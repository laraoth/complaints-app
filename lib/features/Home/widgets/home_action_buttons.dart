import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:complaintsapp/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/public_widgets/app_button_widget.dart';

class HomeActionButtons extends StatelessWidget {
  const HomeActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: AppCard(
            child: AppButton(
              text: "Submit Complaint",
              onPressed: () {
                    context.push(Routes.submitComplaintScreen);
              },
            ),
          ),
        ),
        SizedBox(height: 36.h),
        SizedBox(
          width: double.infinity,
          child: AppCard(
            child: AppButton(
              text: "Track Complaint",
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
