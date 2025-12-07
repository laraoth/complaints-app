import 'package:complaintsapp/features/auth/data/models/signup/signup_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../data/models/signup/signup_request_body.dart';
import '../../data/repos/signup_repo.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;

  SignupCubit(this._signupRepo) : super(SignupState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> signup() async {
    if (passwordController.text.length < 8) {
      emit(
        SignupState.error(error: "Password Should Be at Least 8 Characters"),
      );
      return;
    }

    if (passwordController.text != passwordConfirmationController.text) {
      emit(
        SignupState.error(
          error:
              "Password Should Be Same at the 2 fields Password and Password Confirmation",
        ),
      );
      return;
    }
    emit(SignupState.loading());

    try {
      final request = SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        clientFingerprint: "asda",
      );

      final response = await _signupRepo.signup(request);

      emit(SignupState.success(response));
    } catch (e) {
      final exception = NetworkExceptions.getException(e);
      final message = NetworkExceptions.getErrorMessage(exception);
      emit(SignupState.error(error: message));
    }
  }
}
