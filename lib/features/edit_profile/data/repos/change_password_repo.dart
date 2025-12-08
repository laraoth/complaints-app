import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../../../core/networking/network_info.dart';
import '../datasources/change_password_remote_data_source.dart';
import '../models/change_password_request_body.dart';
import '../models/change_password_response.dart';

class ChangePasswordRepo {
  final ChangePasswordRemoteDataSource changePasswordRemoteDataSource;
  final NetworkInfo networkInfo;

  ChangePasswordRepo({
    required this.changePasswordRemoteDataSource,
    required this.networkInfo,
  });

  Future<ChangePasswordResponse> changePassword(
    ChangePasswordRequestBody body,
  ) async {
    final ChangePasswordRequestBody requestModel = ChangePasswordRequestBody(
      currentPassword: body.currentPassword,
      newPassword: body.newPassword,
      newPasswordConfirmation: body.newPasswordConfirmation,
    );

    if (await networkInfo.isConnected) {
      try {
        final response = await changePasswordRemoteDataSource.changePassword(
          requestModel,
        );
        return response;
      } catch (e) {
        final exception = NetworkExceptions.getException(e);
        throw exception;
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }
}
