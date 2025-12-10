import 'package:complaintsapp/core/helpers/extentions.dart';
import 'package:complaintsapp/core/helpers/spacing.dart';
import 'package:complaintsapp/core/public_widgets/loading_widget.dart';
import 'package:complaintsapp/core/public_widgets/snack_bar_widget.dart';
import 'package:complaintsapp/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:complaintsapp/core/public_widgets/app_button_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/colors.dart';
import '../../data/models/complaints_list/complaints_response.dart';
import '../../logic/edit_and_delte_complaint/edit_and_delete_complaint_cubit.dart';
import '../widgets/edit_complaint/attach_document_tile_edit.dart';
import '../widgets/edit_complaint/attach_photo_tile_edit.dart';
import '../widgets/submit_complaint/complaint_header.dart';
import '../widgets/submit_complaint/field_complaint_type.dart';
import '../widgets/submit_complaint/field_government_entity.dart';
import '../widgets/submit_complaint/field_location.dart';
import '../widgets/submit_complaint/field_description.dart';

class EditComplaintScreen extends StatefulWidget {
  final Complaint complaint;
  const EditComplaintScreen({super.key, required this.complaint});

  @override
  State<EditComplaintScreen> createState() => _EditComplaintScreenState();
}

class _EditComplaintScreenState extends State<EditComplaintScreen> {
  @override
  void initState() {
    final cubit = context.read<EditAndDeleteComplaintCubit>();
    cubit.initializeFromComplaint(widget.complaint);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<EditAndDeleteComplaintCubit>();
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Form(
          key: cubit.formKey,
          child: Column(
            children: [
              const ComplaintHeader(title: 'Edit Complaint'),
              verticalSpace(15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Column(
                  children: [
                    ComplaintTypeField(isEdit: true),
                    verticalSpace(15),
                    GovernmentEntityField(isEdit: true),
                    verticalSpace(15),
                    LocationField(isEdit: true),
                    verticalSpace(15),
                    DescriptionField(isEdit: true),
                    verticalSpace(20),
                    AttachPhotoTileEdit(),
                    verticalSpace(10),
                    AttachDocumentTileEdit(),
                    verticalSpace(25),
                  ],
                ),
              ),
              BlocConsumer<
                EditAndDeleteComplaintCubit,
                EditAndDeleteComplaintState
              >(
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
                      context.pushNamedAndRemoveUntil(
                        Routes.homeScreen,
                        predicate: (route) => false,
                      );
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
                        text: "Edit Complaint",
                        onPressed: () {
                          if (cubit.formKey.currentState!.validate()) {
                            cubit.editComplaint();
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
