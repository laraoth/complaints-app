import 'package:complaintsapp/features/auth/data/models/password_reset/request_reset_password/request_reset_pass_request_body.dart';
import 'package:complaintsapp/features/auth/data/models/password_reset/submit_reset_password/submit_reset_pass_response.dart';
import 'package:complaintsapp/features/auth/data/repos/password_reset_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../data/models/password_reset/request_reset_password/request_reset_pass_response.dart';
import '../../data/models/password_reset/submit_reset_password/submit_reset_pass_request_body.dart';

part 'password_reset_state.dart';
part 'password_reset_cubit.freezed.dart';

class PasswordResetCubit extends Cubit<PasswordResetState> {
  final PasswordResetRepo _passwordResetRepo;
  PasswordResetCubit(this._passwordResetRepo)
    : super(PasswordResetState.initial());

  TextEditingController identifierController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> requestResetPassword() async {
    emit(PasswordResetState.loading());

    try {
      final request = RequestResetPassRequestBody(
        identifier: identifierController.text,
        clientFingerprint: "unique-device-fingerprint-12345",
        ipAddress: "192.168.1.1",
      );

      final response = await _passwordResetRepo.requestResetPassword(request);
      emit(PasswordResetState.success(response));
    } catch (e) {
      final exception = NetworkExceptions.getException(e);
      final message = NetworkExceptions.getErrorMessage(exception);
      emit(PasswordResetState.error(error: message));
    }
  }

  Future<void> submitResetPassword(TextEditingController identifier) async {
    if (passwordController.text != confirmPasswordController.text) {
      emit(
        PasswordResetState.error(error: "Pass And Confirm Pass should be same"),
      );
      return;
    }
    emit(PasswordResetState.loading());

    try {
      final request = SubmitResetPassRequestBody(
        identifier: identifier.text,
        otp: otpController.text,
        password: passwordController.text,
        passwordConfirmation: confirmPasswordController.text,
        clientFingerprint: "unique-device-fingerprint-12345",
        ipAddress: "192.168.1.1",
      );

      final response = await _passwordResetRepo.submitResetPassword(request);
      emit(PasswordResetState.successSubmitResetPass(response));
    } catch (e) {
      final exception = NetworkExceptions.getException(e);
      final message = NetworkExceptions.getErrorMessage(exception);
      emit(PasswordResetState.error(error: message));
    }
  }
}
