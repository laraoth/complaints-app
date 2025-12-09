import 'package:complaintsapp/core/constants/shared_pref_keys.dart';
import 'package:complaintsapp/core/helpers/app_shared_preferences.dart';
import 'package:complaintsapp/features/auth/data/models/login/login_response.dart';
import 'package:dio/dio.dart';

import '../../../../core/networking/api_services_impl.dart';
import '../../../../core/networking/app_link_url.dart';
import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../models/login/login_request_body.dart';

abstract class LoginRemoteDataSource {
  Future<LoginResponse> login(LoginRequestBody login);
}

class LoginRemoteDataSourceImp implements LoginRemoteDataSource {
  final ApiServicesImpl apiServicesImpl;

  LoginRemoteDataSourceImp({required this.apiServicesImpl});

  @override
  Future<LoginResponse> login(LoginRequestBody login) async {
    try {
      final result = await apiServicesImpl.post(
        AppLinkUrl.login,
        body: {
          'identifier': login.identifier,
          'password': login.password,
          'client_fingerprint': login.clientFingerprint,
          'device_id': login.deviceId,
          'ip_address': login.ipAddress,
        },
        
      );

      final response = LoginResponse.fromJson(result);

      final token = response.data.token;
      final email = response.data.user.email;
      final name = response.data.user.name;
      final sharedPref = AppSharedPreferences();
      sharedPref.setString(AppSharedPrefKeys.token, token);
      sharedPref.setString(AppSharedPrefKeys.email, email);
      sharedPref.setString(AppSharedPrefKeys.name, name);

      return response;
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }
}
