import 'package:complaintsapp/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/colors.dart';
import 'core/routing/app_router.dart';

class ComplaintsApp extends StatelessWidget {
  final AppRouter appRouter;
  const ComplaintsApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Complaints App',
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.loginScreen,
          theme: ThemeData(
            primaryColor: AppColors.primaryColor,
            scaffoldBackgroundColor: AppColors.whiteColor,
          ),
        );
      },
    );
  }
}
