import 'package:json_annotation/json_annotation.dart';

part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String name;
  final String? email;
  final String phone;
  final String password;

  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  @JsonKey(name: 'client_fingerprint')
  final String? clientFingerprint;

  SignupRequestBody({
    required this.name,
    this.email,
    required this.phone,
    required this.password,
    required this.passwordConfirmation,
    this.clientFingerprint,
  });

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
