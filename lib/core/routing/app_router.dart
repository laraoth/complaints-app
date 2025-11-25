import 'package:complaintsapp/features/Auth/presentation/screens/login_screen.dart';
import 'package:complaintsapp/features/Auth/presentation/screens/sign_up_screen.dart';
import 'package:complaintsapp/features/Auth/submit_complaint/presentation/screens/submit_complaint_screen.dart';
import 'package:complaintsapp/features/Edit_profile/screens/edit_profile_screen.dart';
import 'package:complaintsapp/features/Home/screens/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'routes.dart';


class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.loginScreen,
    routes: [
      GoRoute(
        path: Routes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: Routes.signUpScreen,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: Routes.homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
       GoRoute(
        path: Routes.submitComplaintScreen,
        builder: (context, state) => const SubmitComplaintScreen(),
      ),
             GoRoute(
        path: Routes.editProfileScreen,
        builder: (context, state) => const EditProfileScreen(),
      ),
    ],
  );
}
