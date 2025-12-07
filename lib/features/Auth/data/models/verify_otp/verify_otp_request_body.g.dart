// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpRequestBody _$VerifyOtpRequestBodyFromJson(
  Map<String, dynamic> json,
) => VerifyOtpRequestBody(
  identifier: json['identifier'] as String,
  otp: json['otp'] as String,
  clientFingerprint: json['client_fingerprint'] as String?,
  deviceId: json['device_id'] as String?,
);

Map<String, dynamic> _$VerifyOtpRequestBodyToJson(
  VerifyOtpRequestBody instance,
) => <String, dynamic>{
  'identifier': instance.identifier,
  'otp': instance.otp,
  'client_fingerprint': instance.clientFingerprint,
  'device_id': instance.deviceId,
};
