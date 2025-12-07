import 'package:complaintsapp/features/auth/logic/login/login_cubit.dart';
import 'package:complaintsapp/features/auth/logic/signup/signup_cubit.dart';
import 'package:complaintsapp/features/auth/logic/verify_otp/verify_otp_cubit.dart';
import 'package:complaintsapp/features/auth/presentation/screens/login_screen.dart';
import 'package:complaintsapp/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:complaintsapp/features/auth/presentation/screens/verify_otp_screen.dart';
import 'package:complaintsapp/features/submit_complaint/presentation/screens/submit_complaint_screen.dart';
import 'package:complaintsapp/features/edit_profile/screens/edit_profile_screen.dart';
import 'package:complaintsapp/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/submit_complaint/logic/submit_complaint_cubit.dart';
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
        return MaterialPageRoute(builder: (_) => EditProfileScreen());

      default:
        return null;
    }
  }
}
