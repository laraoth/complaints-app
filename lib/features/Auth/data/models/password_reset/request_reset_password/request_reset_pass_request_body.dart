import 'package:json_annotation/json_annotation.dart';

part 'request_reset_pass_request_body.g.dart';

@JsonSerializable()
class RequestResetPassRequestBody {
  final String identifier;

  @JsonKey(name: 'client_fingerprint')
  final String? clientFingerprint;

  @JsonKey(name: 'ip_address')
  final String? ipAddress;

  RequestResetPassRequestBody({
    required this.identifier,
    this.clientFingerprint,
    this.ipAddress,
  });

  Map<String, dynamic> toJson() => _$RequestResetPassRequestBodyToJson(this);
}
