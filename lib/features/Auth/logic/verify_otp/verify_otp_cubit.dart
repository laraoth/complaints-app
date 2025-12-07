import 'dart:async';

import 'package:complaintsapp/features/auth/data/models/verify_otp/verify_otp_request_body.dart';
import 'package:complaintsapp/features/auth/data/repos/verify_otp_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complaintsapp/features/auth/data/models/verify_otp/verify_otp_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/error/error_handler/network_exceptions.dart';

part 'verify_otp_state.dart';
part 'verify_otp_cubit.freezed.dart';

class VerifyOtpCubit extends Cubit<VerifyOtpState> {
  final VerifyOtpRepo _otpRepo;

  VerifyOtpCubit(this._otpRepo) : super(VerifyOtpState.initial());

  TextEditingController identifierController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  int remainingSeconds = 0;
  Timer? _timer;

  bool visibility = false;

  void startTimer() {
    remainingSeconds = 30;

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      remainingSeconds--;

      emit(VerifyOtpState.timerTick(remainingSeconds));

      if (remainingSeconds == 0) {
        timer.cancel();
        emit(const VerifyOtpState.timerFinished());
      }
    });
  }

  Future<void> verify() async {
    if (otpController.text.length < 6) {
      emit(VerifyOtpState.error(error: "Otp Should Be at Least 6 Characters"));
      return;
    }
    emit(VerifyOtpState.loading());

    try {
      final request = VerifyOtpRequestBody(
        identifier: identifierController.text,
        otp: otpController.text,
        clientFingerprint: "asds",
        deviceId: "id",
      );

      final response = await _otpRepo.verify(request);

      emit(VerifyOtpState.success(response));
    } catch (e) {
      final exception = NetworkExceptions.getException(e);
      final message = NetworkExceptions.getErrorMessage(exception);
      emit(VerifyOtpState.error(error: message));
    }
  }
}
