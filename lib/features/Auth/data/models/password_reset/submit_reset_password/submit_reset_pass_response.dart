import 'package:json_annotation/json_annotation.dart';

part 'submit_reset_pass_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SubmitResetPassResponse {
  final String message;

  SubmitResetPassResponse({required this.message});
  factory SubmitResetPassResponse.fromJson(Map<String, dynamic> json) =>
      _$SubmitResetPassResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SubmitResetPassResponseToJson(this);
}
