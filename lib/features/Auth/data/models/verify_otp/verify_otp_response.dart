import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_response.g.dart';

@JsonSerializable(explicitToJson: true)
class VerifyOtpResponse {
  final String message;

  VerifyOtpResponse({required this.message});

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpResponseToJson(this);
}
