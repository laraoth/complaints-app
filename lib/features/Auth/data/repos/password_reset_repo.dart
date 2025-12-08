import 'package:complaintsapp/features/auth/data/models/password_reset/request_reset_password/request_reset_pass_request_body.dart';
import 'package:complaintsapp/features/auth/data/models/password_reset/request_reset_password/request_reset_pass_response.dart';

import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../../../core/networking/network_info.dart';
import '../datasources/password_reset_remote_data_source.dart';
import '../models/password_reset/submit_reset_password/submit_reset_pass_request_body.dart';
import '../models/password_reset/submit_reset_password/submit_reset_pass_response.dart';

class PasswordResetRepo {
  final PasswordResetRemoteDataSource passwordResetRemoteDataSource;
  final NetworkInfo networkInfo;
  PasswordResetRepo({
    required this.passwordResetRemoteDataSource,
    required this.networkInfo,
  });

  Future<RequestResetPassResponse> requestResetPassword(
    RequestResetPassRequestBody requestBody,
  ) async {
    final RequestResetPassRequestBody requestResetPassRequestBody =
        RequestResetPassRequestBody(
          identifier: requestBody.identifier,
          clientFingerprint: requestBody.clientFingerprint,
          ipAddress: requestBody.ipAddress,
        );
    if (await networkInfo.isConnected) {
      try {
        final requestResetPassResponse = await passwordResetRemoteDataSource
            .requestResetPassword(requestResetPassRequestBody);
        return requestResetPassResponse;
      } catch (e) {
        final exception = NetworkExceptions.getException(e);
        throw exception;
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }

  Future<SubmitResetPassResponse> submitResetPassword(
    SubmitResetPassRequestBody submitBody,
  ) async {
    final SubmitResetPassRequestBody submitResetPassRequestBody =
        SubmitResetPassRequestBody(
          identifier: submitBody.identifier,
          otp: submitBody.otp,
          password: submitBody.password,
          passwordConfirmation: submitBody.passwordConfirmation,
          clientFingerprint: submitBody.clientFingerprint,
          ipAddress: submitBody.ipAddress,
        );
    if (await networkInfo.isConnected) {
      try {
        final submitResetPassResponse = await passwordResetRemoteDataSource
            .submitResetPassword(submitResetPassRequestBody);
        return submitResetPassResponse;
      } catch (e) {
        final exception = NetworkExceptions.getException(e);
        throw exception;
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }
}
