import 'package:complaintsapp/features/auth/logic/login/login_cubit.dart';
import 'package:complaintsapp/features/auth/logic/signup/signup_cubit.dart';
import 'package:complaintsapp/features/auth/logic/verify_otp/verify_otp_cubit.dart';
import 'package:complaintsapp/features/auth/presentation/screens/login_screen.dart';
import 'package:complaintsapp/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:complaintsapp/features/auth/presentation/screens/verify_otp_screen.dart';
import 'package:complaintsapp/features/complaints_manager/logic/edit_and_delte_complaint/edit_and_delete_complaint_cubit.dart';
import 'package:complaintsapp/features/edit_profile/logic/change_password_cubit.dart';
import 'package:complaintsapp/features/complaints_manager/presentation/screens/submit_complaint_screen.dart';
import 'package:complaintsapp/features/edit_profile/presentation/screens/edit_profile_screen.dart';
import 'package:complaintsapp/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/auth/logic/password_reset/password_reset_cubit.dart';
import '../../features/auth/presentation/screens/request_reset_password_screen.dart';
import '../../features/auth/presentation/screens/submit_reset_password_screen.dart';
import '../../features/complaints_manager/data/models/complaints_list/complaints_response.dart';
import '../../features/complaints_manager/logic/complaints/complaints_cubit.dart';
import '../../features/complaints_manager/logic/submit_complaint/submit_complaint_cubit.dart';
import '../../features/complaints_manager/presentation/screens/complaint_details_screen.dart';
import '../../features/complaints_manager/presentation/screens/complaints_list_screen.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: LoginScreen(),
          ),
        );
      case Routes.requestResetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<PasswordResetCubit>(),
            child: RequestResetPasswordScreen(),
          ),
        );
      case Routes.submitResetPasswordScreen:
        final identifier = settings.arguments as TextEditingController;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<PasswordResetCubit>(),
            child: SubmitResetPasswordScreen(identifier: identifier),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: SignUpScreen(),
          ),
        );
      case Routes.verifyOtpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<VerifyOtpCubit>(),
            child: VerifyOtpScreen(),
          ),
        );
      case Routes.submitComplaintScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SubmitComplaintCubit>(),
            child: SubmitComplaintScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      case Routes.editProfileScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ChangePasswordCubit>(),
            child: EditProfileScreen(),
          ),
        );
      case Routes.complaintsListScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ComplaintsCubit>()..fetchComplaints(),
            child: ComplaintsListScreen(),
          ),
        );
      case Routes.complaintDetailsScreen:
        final complaint = settings.arguments as Complaint;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<EditAndDeleteComplaintCubit>(),
            child: ComplaintDetailsScreen(complaint: complaint),
          ),
        );

      default:
        return null;
    }
  }
}
