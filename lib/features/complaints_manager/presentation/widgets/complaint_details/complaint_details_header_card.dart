import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/public_widgets/app_field_card.dart';
import '../../../data/models/complaints_list/complaints_response.dart';

class ComplaintDetailsHeaderCard extends StatelessWidget {
  final Complaint complaint;
  final String createdDate;

  const ComplaintDetailsHeaderCard({
    super.key,
    required this.complaint,
    required this.createdDate,
  });

  Color _statusColor(String status) {
    switch (status) {
      case 'new':
        return AppColors.blueColor;
      case 'in_progress':
        return AppColors.mediumAlertColor;
      case 'rejected':
        return AppColors.redColor;
      case 'resolved':
        return AppColors.greenColor;
      default:
        return AppColors.greyColor;
    }
  }

  String _statusText(String status) {
    switch (status) {
      case 'new':
        return 'New';
      case 'in_progress':
        return 'In Progress';
      case 'rejected':
        return 'Rejected';
      case 'resolved':
        return 'Resolved';
      default:
        return status.isEmpty ? 'Unknown' : status;
    }
  }

  @override
  Widget build(BuildContext context) {
    final String statusValue = complaint.status ?? '';
    final Color statusColor = _statusColor(statusValue);

    return AppCard(
      padding: EdgeInsets.all(16.w),
      color: AppColors.primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 8.w,
                      height: 8.w,
                      decoration: BoxDecoration(
                        color: statusColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    horizontalSpace(6),
                    Text(
                      _statusText(statusValue),
                      style: AppTextStyles.font12WhiteColorSemibold,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Icon(
                Icons.access_time_rounded,
                size: 16.sp,
                color: AppColors.whiteWithOpacityColor,
              ),
              horizontalSpace(4),
              Text(
                createdDate,
                style: AppTextStyles.font12WhiteBold.copyWith(
                  color: AppColors.whiteWithOpacityColor,
                ),
              ),
            ],
          ),
          verticalSpace(14),
          Text(
            complaint.reference ?? "N/A",
            style: AppTextStyles.font20SecondartTextColorBold.copyWith(
              color: AppColors.whiteColor,
            ),
          ),
          verticalSpace(6),
          Row(
            children: [
              Flexible(
                child: Row(
                  children: [
                    Icon(
                      Icons.report_gmailerrorred_rounded,
                      size: 18.sp,
                      color: AppColors.orangeLightColor,
                    ),
                    horizontalSpace(6),
                    Expanded(
                      child: Text(
                        complaint.type ?? "Unknown type",
                        style: AppTextStyles.font12WhiteColorSemibold,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(6),
          Row(
            children: [
              Icon(
                Icons.apartment_rounded,
                size: 18.sp,
                color: AppColors.lightEmeraldGreenColor,
              ),
              horizontalSpace(6),
              Expanded(
                child: Text(
                  complaint.entity?.name ?? "Unknown entity",
                  style: AppTextStyles.font12WhiteColorSemibold,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
