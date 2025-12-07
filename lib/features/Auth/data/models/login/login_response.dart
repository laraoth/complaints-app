import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginResponse {
  final String message;
  final Data data;

  LoginResponse({required this.message, required this.data});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class Data {
  final User user;
  final String token;

  Data({required this.user, required this.token});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String role;

  @JsonKey(name: "entity_id")
  final int? entityId;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
    this.entityId,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
