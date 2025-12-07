part of 'verify_otp_cubit.dart';

@freezed
class VerifyOtpState with _$VerifyOtpState {
  const factory VerifyOtpState.initial() = _Initial;
  const factory VerifyOtpState.loading() = Loading;
  const factory VerifyOtpState.success(VerifyOtpResponse verifyOtpResponse) = Success;
  const factory VerifyOtpState.error({required String error}) = Error;
  const factory VerifyOtpState.timerTick(int remainingSeconds) = TimerTick;
  const factory VerifyOtpState.timerFinished() = TimerFinished;
}
