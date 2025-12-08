// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_reset_pass_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubmitResetPassRequestBody _$SubmitResetPassRequestBodyFromJson(
  Map<String, dynamic> json,
) => SubmitResetPassRequestBody(
  identifier: json['identifier'] as String,
  otp: json['otp'] as String,
  password: json['password'] as String,
  passwordConfirmation: json['password_confirmation'] as String,
  clientFingerprint: json['client_fingerprint'] as String?,
  ipAddress: json['ip_address'] as String?,
);

Map<String, dynamic> _$SubmitResetPassRequestBodyToJson(
  SubmitResetPassRequestBody instance,
) => <String, dynamic>{
  'identifier': instance.identifier,
  'otp': instance.otp,
  'password': instance.password,
  'password_confirmation': instance.passwordConfirmation,
  'client_fingerprint': instance.clientFingerprint,
  'ip_address': instance.ipAddress,
};
