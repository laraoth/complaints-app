import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/public_widgets/app_field_card.dart';
import '../../../data/models/complaints_list/complaints_response.dart';
import 'info_row.dart';

class ComplaintCitizenCard extends StatelessWidget {
  final Complaint complaint;

  const ComplaintCitizenCard({super.key, required this.complaint});

  String _initials(String? name) {
    if (name == null || name.trim().isEmpty) return '?';
    final parts = name.trim().split(' ');
    if (parts.length == 1) return parts.first.characters.first.toUpperCase();
    return (parts.first.characters.first + parts.last.characters.first)
        .toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 32.w,
                height: 32.w,
                decoration: BoxDecoration(
                  color: AppColors.blueDark.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Icon(
                  Icons.person_rounded,
                  size: 18.sp,
                  color: AppColors.blueDark,
                ),
              ),
              horizontalSpace(10),
              Text(
                'Citizen Information',
                style: AppTextStyles.font16BlackSemiBold,
              ),
            ],
          ),
          verticalSpace(16),
          Row(
            children: [
              CircleAvatar(
                radius: 22.r,
                backgroundColor: AppColors.primaryColor.withValues(alpha: 0.1),
                child: Text(
                  _initials(complaint.citizen?.name),
                  style: AppTextStyles.font16OrangeBold.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              horizontalSpace(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      complaint.citizen?.name ?? "Unknown",
                      style: AppTextStyles.font14BlackBold,
                    ),
                    verticalSpace(4),
                    Text(
                      complaint.citizen?.role ?? "citizen",
                      style: AppTextStyles.font12DarkGreyColorRegular,
                    ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(16),
          InfoRow(
            icon: Icons.phone_rounded,
            label: 'Phone',
            value: complaint.citizen?.phone ?? 'No phone provided',
          ),
          verticalSpace(10),
          InfoRow(
            icon: Icons.email_outlined,
            label: 'Email',
            value: complaint.citizen?.email ?? 'No email provided',
          ),
        ],
      ),
    );
  }
}
