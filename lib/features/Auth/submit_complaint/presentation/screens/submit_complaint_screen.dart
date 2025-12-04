import 'package:flutter/material.dart';
import 'package:complaintsapp/core/public_widgets/app_button_widget.dart';
import '../../../../../core/constants/colors.dart';
import '../widgets/complaint_header.dart';
import '../widgets/field_complaint_type.dart';
import '../widgets/field_government_entity.dart';
import '../widgets/field_location.dart';
import '../widgets/field_description.dart';
import '../widgets/attach_photo_tile.dart';
import '../widgets/attach_document_tile.dart';

class SubmitComplaintScreen extends StatelessWidget {
  const SubmitComplaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ComplaintHeader(),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: const [
                  ComplaintTypeField(),
                  SizedBox(height: 15),
                  GovernmentEntityField(),
                  SizedBox(height: 15),
                  LocationField(),
                  SizedBox(height: 15),
                  DescriptionField(),
                  SizedBox(height: 20),
                  AttachPhotoTile(),
                  SizedBox(height: 10),
                  AttachDocumentTile(),
                  SizedBox(height: 25),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 55),
              child: AppButton(
                text: "Submit Complaint",
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
