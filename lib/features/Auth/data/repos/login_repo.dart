import 'package:complaintsapp/features/auth/data/models/login/login_request_body.dart';

import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../../../core/networking/network_info.dart';
import '../datasources/login_remote_data_source.dart';
import '../models/login/login_response.dart';

class LoginRepo {
  final LoginRemoteDataSource loginRemoteDataSource;
  final NetworkInfo networkInfo;
  LoginRepo({required this.loginRemoteDataSource, required this.networkInfo});

  Future<LoginResponse> login(LoginRequestBody login) async {
    final LoginRequestBody loginModel = LoginRequestBody(
      identifier: login.identifier,
      password: login.password,
      clientFingerprint: login.clientFingerprint,
      deviceId: login.deviceId,
      ipAddress: login.ipAddress,
    );
    if (await networkInfo.isConnected) {
      try {
        final loginResponse = await loginRemoteDataSource.login(loginModel);
        return loginResponse;
      } catch (e) {
        final exception = NetworkExceptions.getException(e);
        throw exception;
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }
}
