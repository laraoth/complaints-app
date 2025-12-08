import 'package:json_annotation/json_annotation.dart';

part 'change_password_request_body.g.dart';

@JsonSerializable()
class ChangePasswordRequestBody {
  @JsonKey(name: 'current_password')
  final String currentPassword;

  @JsonKey(name: 'new_password')
  final String newPassword;

  @JsonKey(name: 'new_password_confirmation')
  final String newPasswordConfirmation;

  ChangePasswordRequestBody({
    required this.currentPassword,
    required this.newPassword,
    required this.newPasswordConfirmation,
  });

  Map<String, dynamic> toJson() => _$ChangePasswordRequestBodyToJson(this);
}
