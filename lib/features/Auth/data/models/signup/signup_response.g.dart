// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) =>
    SignupResponse(
      message: json['message'] as String,
      data: SignupData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignupResponseToJson(SignupResponse instance) =>
    <String, dynamic>{'message': instance.message, 'data': instance.data};

SignupData _$SignupDataFromJson(Map<String, dynamic> json) =>
    SignupData(userId: (json['user_id'] as num).toInt());

Map<String, dynamic> _$SignupDataToJson(SignupData instance) =>
    <String, dynamic>{'user_id': instance.userId};
