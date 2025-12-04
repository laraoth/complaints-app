import 'package:json_annotation/json_annotation.dart';

part 'signup_response.g.dart';

@JsonSerializable()
class SignupResponse {
  final String message;
  final SignupData data;

  SignupResponse({
    required this.message,
    required this.data,
  });

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignupResponseToJson(this);
}

@JsonSerializable()
class SignupData {
  @JsonKey(name: 'user_id')
  final int userId;

  SignupData({required this.userId});

  factory SignupData.fromJson(Map<String, dynamic> json) =>
      _$SignupDataFromJson(json);

  Map<String, dynamic> toJson() => _$SignupDataToJson(this);
}
