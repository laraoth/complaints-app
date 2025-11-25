import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/constants/app_colors.dart';
import 'package:complaintsapp/core/constants/app_text_styles.dart';

class AttachPhotoTile extends StatelessWidget {
  const AttachPhotoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Padding(
        padding: const EdgeInsets.all(16), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Attach Photo",
              style: AppTextStyles.title.copyWith(fontSize: 14),
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity, 
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.upload, color: AppColors.primary),
                label: const Text("Upload Photo"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.background,
                  foregroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

