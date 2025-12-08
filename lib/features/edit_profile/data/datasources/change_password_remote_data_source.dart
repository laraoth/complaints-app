import 'package:complaintsapp/core/constants/shared_pref_keys.dart';
import 'package:complaintsapp/core/helpers/app_shared_preferences.dart';
import 'package:dio/dio.dart';

import '../../../../core/networking/api_services_impl.dart';
import '../../../../core/networking/app_link_url.dart';
import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../models/change_password_request_body.dart';
import '../models/change_password_response.dart';

abstract class ChangePasswordRemoteDataSource {
  Future<ChangePasswordResponse> changePassword(ChangePasswordRequestBody body);
}

class ChangePasswordRemoteDataSourceImp
    implements ChangePasswordRemoteDataSource {
  final ApiServicesImpl apiServicesImpl;

  ChangePasswordRemoteDataSourceImp({required this.apiServicesImpl});

  @override
  Future<ChangePasswordResponse> changePassword(
    ChangePasswordRequestBody body,
  ) async {
    try {
      final sharedPref = AppSharedPreferences();
      final token = sharedPref.getString(AppSharedPrefKeys.token);

      final result = await apiServicesImpl.post(
        AppLinkUrl.changePassword,
        body: {
          'current_password': body.currentPassword,
          'new_password': body.newPassword,
          'new_password_confirmation': body.newPasswordConfirmation,
        },
        token: token,
      );

      final response = ChangePasswordResponse.fromJson(result);
      return response;
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }
}
