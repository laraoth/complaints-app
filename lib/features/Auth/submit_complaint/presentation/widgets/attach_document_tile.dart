import 'package:complaintsapp/core/public_widgets/app_field_card.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/constants/app_colors.dart';
import 'package:complaintsapp/core/constants/app_text_styles.dart';
class AttachDocumentTile extends StatelessWidget {
  const AttachDocumentTile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Attach Document",
              style: AppTextStyles.title.copyWith(fontSize: 14),
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity, 
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.file_copy,
                  color: AppColors.primary,
                ),
                label: const Text("Upload Document"),
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
