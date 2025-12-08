import 'package:json_annotation/json_annotation.dart';

part 'request_reset_pass_response.g.dart';

@JsonSerializable(explicitToJson: true)
class RequestResetPassResponse {
  final String message;

  RequestResetPassResponse({required this.message});
  factory RequestResetPassResponse.fromJson(Map<String, dynamic> json) =>
      _$RequestResetPassResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RequestResetPassResponseToJson(this);
}

