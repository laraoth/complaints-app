import 'package:complaintsapp/features/auth/presentation/screens/login_screen.dart';
import 'package:complaintsapp/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:complaintsapp/features/auth/submit_complaint/presentation/screens/submit_complaint_screen.dart';
import 'package:complaintsapp/features/edit_profile/screens/edit_profile_screen.dart';
import 'package:complaintsapp/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.submitComplaintScreen:
        return MaterialPageRoute(builder: (_) => SubmitComplaintScreen());
      case Routes.editProfileScreen:
        return MaterialPageRoute(builder: (_) => EditProfileScreen());

      default:
        return null;
    }
  }
}
