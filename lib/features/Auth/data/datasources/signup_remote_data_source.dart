import 'package:dio/dio.dart';

import '../../../../core/networking/api_services_impl.dart';
import '../../../../core/networking/app_link_url.dart';
import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../models/signup/signup_request_body.dart';
import '../models/signup/signup_response.dart';

abstract class SignupRemoteDataSource {
  Future<SignupResponse> signup(SignupRequestBody signup);
}

class SignupRemoteDataSourceImp implements SignupRemoteDataSource {
  final ApiServicesImpl apiServicesImpl;

  SignupRemoteDataSourceImp({required this.apiServicesImpl});

  @override
  Future<SignupResponse> signup(SignupRequestBody signup) async {
    try {
      final result = await apiServicesImpl.post(
        AppLinkUrl.signup,
        body: {
          'name': signup.name,
          'email': signup.email,
          'phone': signup.phone,
          'password': signup.password,
          'password_confirmation': signup.passwordConfirmation,
          'client_fingerprint': signup.clientFingerprint,
        },
      );

      final response = SignupResponse.fromJson(result);

      return response;
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }
}
