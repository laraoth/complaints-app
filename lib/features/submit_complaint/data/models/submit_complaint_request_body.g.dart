// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_complaint_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubmitComplaintRequestBody _$SubmitComplaintRequestBodyFromJson(
  Map<String, dynamic> json,
) => SubmitComplaintRequestBody(
  entityId: (json['entity_id'] as num).toInt(),
  type: json['type'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$SubmitComplaintRequestBodyToJson(
  SubmitComplaintRequestBody instance,
) => <String, dynamic>{
  'entity_id': instance.entityId,
  'type': instance.type,
  'description': instance.description,
};
