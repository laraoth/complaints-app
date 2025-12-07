import 'package:complaintsapp/complaints_app.dart';
import 'package:complaintsapp/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/app_shared_preferences.dart';
import 'core/helpers/my_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetit();
  await ScreenUtil.ensureScreenSize();
  await AppSharedPreferences().init();
  Bloc.observer = MyBlocObserver();
  runApp(ComplaintsApp(appRouter: AppRouter()));
}
