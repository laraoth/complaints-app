import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/public_widgets/app_field_card.dart';
import '../../../data/models/complaints_list/complaints_response.dart';
import 'section_title.dart';

class ComplaintInformationCard extends StatelessWidget {
  final Complaint complaint;

  const ComplaintInformationCard({super.key, required this.complaint});

  String _beautifyLocation(String? location) {
    if (location == null || location.isEmpty) {
      return 'No location specified.';
    }
    if (location.contains('{') && location.contains('lat')) {
      return 'Pinned location (map coordinates).';
    }
    return location;
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
                  color: AppColors.tealColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Icon(
                  Icons.description_outlined,
                  size: 18.sp,
                  color: AppColors.tealColor,
                ),
              ),
              horizontalSpace(10),
              Text(
                'Complaint Information',
                style: AppTextStyles.font16BlackSemiBold,
              ),
            ],
          ),
          verticalSpace(16),
          SectionTitle(title: 'Description'),
          verticalSpace(6),
          Text(
            complaint.description ?? "No description provided.",
            style: AppTextStyles.font14SecondaryTextRegular,
          ),
          verticalSpace(16),
          SectionTitle(title: 'Location'),
          verticalSpace(8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 32.w,
                height: 32.w,
                decoration: BoxDecoration(
                  color: AppColors.orangeVeryLightColor.withValues(alpha: 0.2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.location_on_rounded,
                  size: 18.sp,
                  color: AppColors.orangeColor,
                ),
              ),
              horizontalSpace(10),
              Expanded(
                child: Text(
                  _beautifyLocation(complaint.location),
                  style: AppTextStyles.font14SecondaryTextRegular,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
