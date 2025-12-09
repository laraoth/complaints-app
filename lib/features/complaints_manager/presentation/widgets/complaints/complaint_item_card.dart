import 'package:complaintsapp/core/constants/colors.dart';
import 'package:complaintsapp/core/constants/text_styles.dart';
import 'package:complaintsapp/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/public_widgets/app_field_card.dart';
import '../../../data/models/complaints_list/complaints_response.dart';

class ComplaintItemCard extends StatelessWidget {
  final Complaint complaint;
  final VoidCallback onTap;

  const ComplaintItemCard({
    super.key,
    required this.complaint,
    required this.onTap,
  });

  Color _statusColor(String status) {
    switch (status) {
      case 'new':
        return AppColors.blueColor;
      case 'in_progress':
        return AppColors.orangeColor;
      case 'rejected':
        return AppColors.redColor;
      case 'resolved':
        return AppColors.greenColor;
      default:
        return AppColors.greyColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    String createdDate = complaint.createdAt!.split('T').first;

    return Container(
      margin: EdgeInsets.all(8.w),
      child: GestureDetector(
        onTap: onTap,
        child: AppCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      complaint.reference ?? "",
                      style: AppTextStyles.font14BlackBold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: _statusColor(
                        complaint.status ?? "",
                      ).withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Text(
                      complaint.status ?? "",
                      style: TextStyle(
                        fontSize: 12,
                        color: _statusColor(complaint.status ?? ""),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpace(8),
              Text(
                '${complaint.type} • ${complaint.entity?.name}',
                style: AppTextStyles.font12LightGrayishTaupeSemiBold,

                // TextStyle(fontSize: 14, color: AppColors.greyColor),
              ),
              verticalSpace(8),
              Text(
                complaint.description ?? "",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.font12LightGrayishTaupeSemiBold,
              ),
              verticalSpace(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date : $createdDate',
                    style: AppTextStyles.font12LightGrayishTaupeSemiBold,
                  ),
                  const Icon(Icons.chevron_right, size: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
