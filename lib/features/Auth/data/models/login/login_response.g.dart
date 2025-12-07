// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data.toJson(),
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  user: User.fromJson(json['user'] as Map<String, dynamic>),
  token: json['token'] as String,
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'user': instance.user,
  'token': instance.token,
};

User _$UserFromJson(Map<String, dynamic> json) => User(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
  role: json['role'] as String,
  entityId: (json['entity_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'role': instance.role,
  'entity_id': instance.entityId,
};
