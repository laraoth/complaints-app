import 'package:complaintsapp/core/helpers/extentions.dart';
import 'package:complaintsapp/core/helpers/spacing.dart';
import 'package:complaintsapp/core/public_widgets/loading_widget.dart';
import 'package:complaintsapp/core/public_widgets/snack_bar_widget.dart';
import 'package:complaintsapp/features/submit_complaint/logic/submit_complaint_cubit.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/public_widgets/app_button_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/colors.dart';
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
    final cubit = context.read<SubmitComplaintCubit>();
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Form(
          key: cubit.formKey,
          child: Column(
            children: [
              const ComplaintHeader(),
              verticalSpace(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    ComplaintTypeField(),
                    verticalSpace(15),
                    GovernmentEntityField(),
                    verticalSpace(15),
                    LocationField(),
                    verticalSpace(15),
                    DescriptionField(),
                    verticalSpace(20),
                    AttachPhotoTile(),
                    verticalSpace(10),
                    AttachDocumentTile(),
                    verticalSpace(25),
                  ],
                ),
              ),
              BlocConsumer<SubmitComplaintCubit, SubmitComplaintState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: (response) {
                      showAppSnackBar(context, response.message!);
                      cubit.descriptionController.clear();
                      cubit.locationController.clear();
                      cubit.currentLat = null;
                      cubit.currentLng = null;
                      cubit.clearImage();
                      cubit.clearPdf();
                      context.pop();
                    },
                    error: (error) => showAppSnackBar(context, error),
                    locationError: (error) => showAppSnackBar(context, error),
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => const LoadingWidget(),
                    orElse: () => Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.h,
                        horizontal: 55.w,
                      ),
                      child: AppButton(
                        text: "Submit Complaint",
                        onPressed: () {
                          if (cubit.formKey.currentState!.validate()) {
                            cubit.sendComplaint();
                          }
                        },
                      ),
                    ),
                  );
                },
              ),

              verticalSpace(25),
            ],
          ),
        ),
      ),
    );
  }
}
