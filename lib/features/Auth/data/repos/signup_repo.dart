import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../../../core/networking/network_info.dart';
import '../datasources/signup_remote_data_source.dart';
import '../models/signup/signup_request_body.dart';
import '../models/signup/signup_response.dart';

class SignupRepo {
  final SignupRemoteDataSource signupRemoteDataSource;
  final NetworkInfo networkInfo;
  SignupRepo({required this.signupRemoteDataSource, required this.networkInfo});

  Future<SignupResponse> signup(SignupRequestBody signup) async {
    final SignupRequestBody signupModel = SignupRequestBody(
      name: signup.name,
      email: signup.email,
      phone: signup.phone,
      password: signup.password,
      passwordConfirmation: signup.passwordConfirmation,
      clientFingerprint: signup.clientFingerprint,
    );
    if (await networkInfo.isConnected) {
      try {
        final signupResponse = await signupRemoteDataSource.signup(signupModel);
        return signupResponse;
      } catch (e) {
        final exception = NetworkExceptions.getException(e);
        throw exception;
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }
}
