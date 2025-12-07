import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_request_body.g.dart';

@JsonSerializable(explicitToJson: true)
class VerifyOtpRequestBody {
  final String identifier;
  final String otp;

  @JsonKey(name: 'client_fingerprint')
  final String? clientFingerprint;

  @JsonKey(name: 'device_id')
  final String? deviceId;

  VerifyOtpRequestBody({
    required this.identifier,
    required this.otp,
    this.clientFingerprint,
    this.deviceId,
  });

  Map<String, dynamic> toJson() => _$VerifyOtpRequestBodyToJson(this);
}
