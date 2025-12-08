import 'package:complaintsapp/features/auth/data/datasources/verify_otp_remote_data_source.dart';
import 'package:complaintsapp/features/auth/data/repos/verify_otp_repo.dart';
import 'package:complaintsapp/features/auth/logic/verify_otp/verify_otp_cubit.dart';
import 'package:complaintsapp/features/edit_profile/data/datasources/change_password_remote_data_source.dart';
import 'package:complaintsapp/features/edit_profile/data/repos/change_password_repo.dart';
import 'package:complaintsapp/features/edit_profile/logic/change_password_cubit.dart';
import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/data/datasources/login_remote_data_source.dart';
import '../../features/auth/data/datasources/password_reset_remote_data_source.dart';
import '../../features/auth/data/datasources/signup_remote_data_source.dart';
import '../../features/auth/data/repos/login_repo.dart';
import '../../features/auth/data/repos/password_reset_repo.dart';
import '../../features/auth/data/repos/signup_repo.dart';
import '../../features/auth/logic/login/login_cubit.dart';
import '../../features/auth/logic/password_reset/password_reset_cubit.dart';
import '../../features/auth/logic/signup/signup_cubit.dart';
import '../../features/submit_complaint/data/datasources/submit_complaint_remote_data_source.dart';
import '../../features/submit_complaint/data/repos/submit_complaint_repo.dart';
import '../../features/submit_complaint/logic/submit_complaint_cubit.dart';
import '../networking/api_services_impl.dart';
import '../networking/crud_dio.dart';
import '../networking/network_info.dart';

final getIt = GetIt.instance;

Future<void> setupGetit() async {
  //! feature - signup

  // cubit
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
  //repo
  getIt.registerLazySingleton<SignupRepo>(
    () => SignupRepo(networkInfo: getIt(), signupRemoteDataSource: getIt()),
  );
  //data source
  getIt.registerLazySingleton<SignupRemoteDataSource>(
    () => SignupRemoteDataSourceImp(apiServicesImpl: getIt()),
  );

  // //! feature - login

  //cubit
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  //repo
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(networkInfo: getIt(), loginRemoteDataSource: getIt()),
  );
  //data source
  getIt.registerLazySingleton<LoginRemoteDataSource>(
    () => LoginRemoteDataSourceImp(apiServicesImpl: getIt()),
  );

  // //! feature - password reset

  //cubit
  getIt.registerFactory<PasswordResetCubit>(() => PasswordResetCubit(getIt()));
  //repo
  getIt.registerLazySingleton<PasswordResetRepo>(
    () => PasswordResetRepo(
      networkInfo: getIt(),
      passwordResetRemoteDataSource: getIt(),
    ),
  );
  //data source
  getIt.registerLazySingleton<PasswordResetRemoteDataSource>(
    () => PasswordResetRemoteDataSourceImp(apiServicesImpl: getIt()),
  );

  // //! feature - verify otp

  //cubit
  getIt.registerFactory<VerifyOtpCubit>(() => VerifyOtpCubit(getIt()));
  //repo
  getIt.registerLazySingleton<VerifyOtpRepo>(
    () =>
        VerifyOtpRepo(networkInfo: getIt(), verifyOtpRemoteDataSource: getIt()),
  );
  //data source
  getIt.registerLazySingleton<VerifyOtpRemoteDataSource>(
    () => VerifyOtpRemoteDataSourceImp(apiServicesImpl: getIt()),
  );

  // //! feature - Submit Complaint

  //cubit
  getIt.registerFactory<SubmitComplaintCubit>(
    () => SubmitComplaintCubit(getIt()),
  );
  //repo
  getIt.registerLazySingleton<SubmitComplaintRepo>(
    () => SubmitComplaintRepo(
      networkInfo: getIt(),
      submitComplaintRemoteDataSource: getIt(),
    ),
  );
  //data source
  getIt.registerLazySingleton<SubmitComplaintRemoteDataSource>(
    () => SubmitComplaintRemoteDataSourceImp(apiServicesImpl: getIt()),
  );

  // //! feature - Edit Profile

  //cubit
  getIt.registerFactory<ChangePasswordCubit>(
    () => ChangePasswordCubit(getIt()),
  );
  //repo
  getIt.registerLazySingleton<ChangePasswordRepo>(
    () => ChangePasswordRepo(
      networkInfo: getIt(),
      changePasswordRemoteDataSource: getIt(),
    ),
  );
  //data source
  getIt.registerLazySingleton<ChangePasswordRemoteDataSource>(
    () => ChangePasswordRemoteDataSourceImp(apiServicesImpl: getIt()),
  );

  // //! feature - home
  // //cubit
  // getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
  // //repo
  // getIt.registerLazySingleton<HomeRepo>(
  //   () => HomeRepo(networkInfo: getIt(), homeRemoteDataSource: getIt()),
  // );
  // //data source
  // getIt.registerLazySingleton<HomeRemoteDataSource>(
  //   () => HomeRemoteDataSourceImp(apiServicesImpl: getIt()),
  // );

  // //! feature - profile
  // //cubit
  // getIt.registerFactory<ProfileCubit>(() => ProfileCubit());

  //! Core

  getIt.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImp(internetConnectionChecker: getIt()),
  );

  getIt.registerLazySingleton(() => CrudDio());
  getIt.registerLazySingleton(() => ApiServicesImpl());

  //! External

  final sharedPreference = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreference);
  getIt.registerLazySingleton(() => Dio());
  getIt.registerLazySingleton(() => InternetConnectionChecker.createInstance());
}
