import 'package:json_annotation/json_annotation.dart';

part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody {
  final String identifier;
  final String password;

  @JsonKey(name: 'client_fingerprint')
  final String? clientFingerprint;

  @JsonKey(name: 'device_id')
  final String? deviceId;

  @JsonKey(name: 'ip_address')
  final String? ipAddress;

  LoginRequestBody({
    required this.identifier,
    required this.password,
    this.clientFingerprint,
    this.deviceId,
    this.ipAddress,
  });

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
