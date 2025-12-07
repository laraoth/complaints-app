import 'package:complaintsapp/features/auth/data/models/verify_otp/verify_otp_request_body.dart';
import 'package:complaintsapp/features/auth/data/models/verify_otp/verify_otp_response.dart';
import 'package:dio/dio.dart';

import '../../../../core/networking/api_services_impl.dart';
import '../../../../core/networking/app_link_url.dart';
import '../../../../core/networking/error/error_handler/network_exceptions.dart';

abstract class VerifyOtpRemoteDataSource {
  Future<VerifyOtpResponse> verify(VerifyOtpRequestBody verify);
}

class VerifyOtpRemoteDataSourceImp implements VerifyOtpRemoteDataSource {
  final ApiServicesImpl apiServicesImpl;

  VerifyOtpRemoteDataSourceImp({required this.apiServicesImpl});

  @override
  Future<VerifyOtpResponse> verify(VerifyOtpRequestBody verify) async {
    try {
      final result = await apiServicesImpl.post(
        AppLinkUrl.verifyOtp,
        body: {
          'identifier': verify.identifier,
          'otp': verify.otp,
          'client_fingerprint': verify.clientFingerprint,
          'device_id': verify.deviceId,
        },
      );

      final response = VerifyOtpResponse.fromJson(result);

      return response;
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }
}
