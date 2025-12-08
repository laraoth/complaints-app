import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/networking/error/error_handler/network_exceptions.dart';
import '../data/models/change_password_request_body.dart';
import '../data/models/change_password_response.dart';
import '../data/repos/change_password_repo.dart';

part 'change_password_state.dart';
part 'change_password_cubit.freezed.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  final ChangePasswordRepo _changePasswordRepo;

  ChangePasswordCubit(this._changePasswordRepo)
    : super(ChangePasswordState.initial());

  final TextEditingController currentPasswordController =
      TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController newPasswordConfirmationController =
      TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> changePassword() async {
    if (newPasswordController.text != newPasswordConfirmationController.text) {
      emit(
        ChangePasswordState.error(
          error: 'New Password and Confirm Password should same',
        ),
      );
      return;
    }
    emit(const ChangePasswordState.loading());

    try {
      final request = ChangePasswordRequestBody(
        currentPassword: currentPasswordController.text.trim(),
        newPassword: newPasswordController.text.trim(),
        newPasswordConfirmation: newPasswordConfirmationController.text.trim(),
      );

      final response = await _changePasswordRepo.changePassword(request);

      emit(ChangePasswordState.success(response));
    } catch (e) {
      final exception = NetworkExceptions.getException(e);
      final message = NetworkExceptions.getErrorMessage(exception);
      emit(ChangePasswordState.error(error: message));
    }
  }

  @override
  Future<void> close() {
    currentPasswordController.dispose();
    newPasswordController.dispose();
    newPasswordConfirmationController.dispose();
    return super.close();
  }
}
