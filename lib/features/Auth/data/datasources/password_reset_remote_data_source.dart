import 'package:complaintsapp/features/auth/data/models/password_reset/submit_reset_password/submit_reset_pass_response.dart';
import 'package:dio/dio.dart';

import '../../../../core/networking/api_services_impl.dart';
import '../../../../core/networking/app_link_url.dart';
import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../models/password_reset/request_reset_password/request_reset_pass_request_body.dart';
import '../models/password_reset/request_reset_password/request_reset_pass_response.dart';
import '../models/password_reset/submit_reset_password/submit_reset_pass_request_body.dart';

abstract class PasswordResetRemoteDataSource {
  Future<RequestResetPassResponse> requestResetPassword(
    RequestResetPassRequestBody requestBody,
  );
  Future<SubmitResetPassResponse> submitResetPassword(
    SubmitResetPassRequestBody submitBody,
  );
}

class PasswordResetRemoteDataSourceImp
    implements PasswordResetRemoteDataSource {
  final ApiServicesImpl apiServicesImpl;

  PasswordResetRemoteDataSourceImp({required this.apiServicesImpl});

  @override
  Future<RequestResetPassResponse> requestResetPassword(
    RequestResetPassRequestBody requestBody,
  ) async {
    try {
      final result = await apiServicesImpl.post(
        AppLinkUrl.requestPasswordReset,
        body: {
          'identifier': requestBody.identifier,
          'client_fingerprint': requestBody.clientFingerprint,
          'ip_address': requestBody.ipAddress,
        },
      );

      final response = RequestResetPassResponse.fromJson(result);

      return response;
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }

  @override
  Future<SubmitResetPassResponse> submitResetPassword(
    SubmitResetPassRequestBody submitBody,
  ) async {
    try {
      final result = await apiServicesImpl.post(
        AppLinkUrl.submitPasswordReset,
        body: {
          'identifier': submitBody.identifier,
          'otp': submitBody.otp,
          'password': submitBody.password,
          'password_confirmation': submitBody.passwordConfirmation,
          'client_fingerprint': submitBody.clientFingerprint,
          'ip_address': submitBody.ipAddress,
        },
      );

      final response = SubmitResetPassResponse.fromJson(result);

      return response;
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }
}
