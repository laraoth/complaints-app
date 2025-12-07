// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequestBody _$LoginRequestBodyFromJson(Map<String, dynamic> json) =>
    LoginRequestBody(
      identifier: json['identifier'] as String,
      password: json['password'] as String,
      clientFingerprint: json['client_fingerprint'] as String?,
      deviceId: json['device_id'] as String?,
      ipAddress: json['ip_address'] as String?,
    );

Map<String, dynamic> _$LoginRequestBodyToJson(LoginRequestBody instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'password': instance.password,
      'client_fingerprint': instance.clientFingerprint,
      'device_id': instance.deviceId,
      'ip_address': instance.ipAddress,
    };
