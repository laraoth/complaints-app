part of 'change_password_cubit.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial() = _Initial;
  const factory ChangePasswordState.loading() = Loading;
  const factory ChangePasswordState.success(ChangePasswordResponse changePasswordResponse) =
      Success;
  const factory ChangePasswordState.error({required String error}) = Error;
}
