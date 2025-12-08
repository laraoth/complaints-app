// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_reset_pass_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestResetPassRequestBody _$RequestResetPassRequestBodyFromJson(
  Map<String, dynamic> json,
) => RequestResetPassRequestBody(
  identifier: json['identifier'] as String,
  clientFingerprint: json['client_fingerprint'] as String?,
  ipAddress: json['ip_address'] as String?,
);

Map<String, dynamic> _$RequestResetPassRequestBodyToJson(
  RequestResetPassRequestBody instance,
) => <String, dynamic>{
  'identifier': instance.identifier,
  'client_fingerprint': instance.clientFingerprint,
  'ip_address': instance.ipAddress,
};
