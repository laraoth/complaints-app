import 'package:complaintsapp/core/constants/colors.dart';
import 'package:complaintsapp/core/constants/text_styles.dart';
import 'package:complaintsapp/core/helpers/extentions.dart';
import 'package:complaintsapp/core/helpers/spacing.dart';
import 'package:complaintsapp/core/public_widgets/app_button_widget.dart';
import 'package:complaintsapp/core/public_widgets/loading_widget.dart';
import 'package:complaintsapp/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/complaints/complaints_cubit.dart';
import '../widgets/complaints/complaint_item_card.dart';

// import 'complaint_details_screen.dart';

class ComplaintsListScreen extends StatelessWidget {
  const ComplaintsListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ComplaintsCubit>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Previous Complaints",
          style: AppTextStyles.font14WhiteBold,
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<ComplaintsCubit, ComplaintsState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const LoadingWidget(),
            success: (response) {
              final complaints = response.data;

              if (complaints!.isEmpty) {
                return const Center(child: Text("No complaints found."));
              }

              return ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                itemCount: complaints.length,
                itemBuilder: (context, index) {
                  final complaint = complaints[index];
                  return ComplaintItemCard(
                    complaint: complaint,
                    onTap: () => context.pushNamed(
                      Routes.complaintDetailsScreen,
                      arguments: complaint,
                    ),
                  );
                },
              );
            },
            error: (error) => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(error, textAlign: TextAlign.center),
                  verticalSpace(12),
                  SizedBox(
                    width: 150.w,
                    child: AppButton(
                      onPressed: () {
                        cubit.fetchComplaints();
                      },
                      text: 'Retry',
                    ),
                  ),
                ],
              ),
            ),

            orElse: () {
              return const SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}
