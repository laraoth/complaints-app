import 'package:complaintsapp/core/helpers/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/public_widgets/loading_widget.dart';
import '../../../../core/public_widgets/snack_bar_widget.dart';
import '../../../../core/routing/routes.dart';
import '../../data/models/complaints_list/complaints_response.dart';
import '../../logic/edit_and_delte_complaint/edit_and_delete_complaint_cubit.dart';
import '../widgets/complaint_details/complaint_citizen_card.dart';
import '../widgets/complaint_details/complaint_details_header_card.dart';
import '../widgets/complaint_details/complaint_information_card.dart';

class ComplaintDetailsScreen extends StatelessWidget {
  final Complaint complaint;

  const ComplaintDetailsScreen({super.key, required this.complaint});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<EditAndDeleteComplaintCubit>();
    final String createdDate = (complaint.createdAt ?? '').contains('T')
        ? complaint.createdAt!.split('T').first
        : (complaint.createdAt ?? 'N/A');

    return BlocConsumer<
      EditAndDeleteComplaintCubit,
      EditAndDeleteComplaintState
    >(
      listener: (context, state) {
        state.whenOrNull(
          successDeleteComplaint: (deleteResponse) {
            showAppSnackBar(context, deleteResponse.message);
            context.pushNamedAndRemoveUntil(
              Routes.homeScreen,
              predicate: (route) => false,
            );
          },
          error: (error) {
            showAppSnackBar(context, error);
          },
        );
      },
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return Scaffold(
          backgroundColor: AppColors.background,
          appBar: AppBar(
            backgroundColor: AppColors.primaryColor,
            centerTitle: true,
            elevation: 0,
            title: Text(
              "Complaint Details",
              style: AppTextStyles.font16OWhiteSemiBold,
            ),
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              top: 16.h,
              bottom: 24.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ComplaintDetailsHeaderCard(
                  complaint: complaint,
                  createdDate: createdDate,
                ),
                verticalSpace(16),
                ComplaintInformationCard(complaint: complaint),
                verticalSpace(16),
                ComplaintCitizenCard(complaint: complaint),
                verticalSpace(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: isLoading
                          ? null
                          : () {
                              context.pushNamed(
                                Routes.editComplaintScreen,
                                arguments: complaint,
                              );
                            },
                      child: Text(
                        'Edit Complaint',
                        style: AppTextStyles.font14BlackBold,
                      ),
                    ),
                    TextButton(
                      onPressed: isLoading
                          ? null
                          : () async {
                              if ((complaint.status ?? '').trim() != 'new') {
                                showAppSnackBar(
                                  context,
                                  'Only complaints with status "new" can be deleted.',
                                );
                                return;
                              }

                              cubit.initializeFromComplaint(complaint);

                              final confirm = await showDialog<bool>(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: const Text('Delete complaint'),
                                  content: const Text(
                                    'Are you sure you want to delete this complaint?',
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.of(ctx).pop(false),
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.of(ctx).pop(true),
                                      child: const Text('Delete'),
                                    ),
                                  ],
                                ),
                              );

                              if (confirm == true) {
                                cubit.deleteComplaint();
                              }
                            },
                      child: isLoading
                          ? const LoadingWidget()
                          : Text(
                              'Delete Complaint',
                              style: AppTextStyles.font14RedBold,
                            ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
