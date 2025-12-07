import 'package:complaintsapp/features/auth/data/datasources/verify_otp_remote_data_source.dart';
import 'package:complaintsapp/features/auth/data/models/verify_otp/verify_otp_request_body.dart';
import 'package:complaintsapp/features/auth/data/models/verify_otp/verify_otp_response.dart';

import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../../../core/networking/network_info.dart';

class VerifyOtpRepo {
  final VerifyOtpRemoteDataSource verifyOtpRemoteDataSource;
  final NetworkInfo networkInfo;
  VerifyOtpRepo({
    required this.verifyOtpRemoteDataSource,
    required this.networkInfo,
  });

  Future<VerifyOtpResponse> verify(VerifyOtpRequestBody verify) async {
    final VerifyOtpRequestBody verifyModel = VerifyOtpRequestBody(
      identifier: verify.identifier,
      otp: verify.otp,
      clientFingerprint: verify.clientFingerprint,
      deviceId: verify.deviceId,
    );
    if (await networkInfo.isConnected) {
      try {
        final verifyResponse = await verifyOtpRemoteDataSource.verify(verifyModel);
        return verifyResponse;
      } catch (e) {
        final exception = NetworkExceptions.getException(e);
        throw exception;
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }
}
