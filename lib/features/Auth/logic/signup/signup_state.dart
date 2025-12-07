part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = Loading;
  const factory SignupState.success(SignupResponse signupResponse) = Success;
  const factory SignupState.error({required String error}) = Error;
}
