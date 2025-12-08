import 'package:json_annotation/json_annotation.dart';

part 'submit_reset_pass_request_body.g.dart';

@JsonSerializable()
class SubmitResetPassRequestBody {
  final String identifier;
  final String otp;
  final String password;

  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  @JsonKey(name: 'client_fingerprint')
  final String? clientFingerprint;

  @JsonKey(name: 'ip_address')
  final String? ipAddress;

  SubmitResetPassRequestBody({
    required this.identifier,
    required this.otp,
    required this.password,
    required this.passwordConfirmation,
    this.clientFingerprint,
    this.ipAddress,
  });

  Map<String, dynamic> toJson() => _$SubmitResetPassRequestBodyToJson(this);
}
