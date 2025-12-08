part of 'password_reset_cubit.dart';

@freezed
class PasswordResetState with _$PasswordResetState {
  const factory PasswordResetState.initial() = _Initial;
  const factory PasswordResetState.loading() = Loading;
  const factory PasswordResetState.success(
    RequestResetPassResponse requestResetPassResponse,
  ) = Success;
  const factory PasswordResetState.successSubmitResetPass(
    SubmitResetPassResponse submitResetPassResponse,
  ) = SuccessSubmitResetPass;
  const factory PasswordResetState.error({required String error}) = Error;
}
