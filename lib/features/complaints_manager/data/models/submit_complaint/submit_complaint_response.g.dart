// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_complaint_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubmitComplaintResponse _$SubmitComplaintResponseFromJson(
  Map<String, dynamic> json,
) => SubmitComplaintResponse(
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : ComplaintData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SubmitComplaintResponseToJson(
  SubmitComplaintResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'data': instance.data?.toJson(),
};

ComplaintData _$ComplaintDataFromJson(Map<String, dynamic> json) =>
    ComplaintData(
      id: (json['id'] as num?)?.toInt(),
      reference: json['reference'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      entityId: (json['entity_id'] as num?)?.toInt(),
      type: json['type'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      status: json['status'] as String?,
      lockedBy: (json['locked_by'] as num?)?.toInt(),
      lockedUntil: json['locked_until'] as String?,
      lockToken: json['lock_token'] as String?,
      version: (json['version'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      citizen: json['citizen'] == null
          ? null
          : Citizen.fromJson(json['citizen'] as Map<String, dynamic>),
      entity: json['entity'] == null
          ? null
          : Entity.fromJson(json['entity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ComplaintDataToJson(ComplaintData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reference': instance.reference,
      'user_id': instance.userId,
      'entity_id': instance.entityId,
      'type': instance.type,
      'description': instance.description,
      'location': instance.location,
      'status': instance.status,
      'locked_by': instance.lockedBy,
      'locked_until': instance.lockedUntil,
      'lock_token': instance.lockToken,
      'version': instance.version,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'citizen': instance.citizen?.toJson(),
      'entity': instance.entity?.toJson(),
    };

Citizen _$CitizenFromJson(Map<String, dynamic> json) => Citizen(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  email: json['email'] as String?,
  emailVerifiedAt: json['email_verified_at'] == null
      ? null
      : DateTime.parse(json['email_verified_at'] as String),
  phone: json['phone'] as String?,
  role: json['role'] as String?,
  entityId: (json['entity_id'] as num?)?.toInt(),
  isLocked: json['is_locked'] as bool?,
  deletedAt: json['deleted_at'] == null
      ? null
      : DateTime.parse(json['deleted_at'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$CitizenToJson(Citizen instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'email_verified_at': instance.emailVerifiedAt?.toIso8601String(),
  'phone': instance.phone,
  'role': instance.role,
  'entity_id': instance.entityId,
  'is_locked': instance.isLocked,
  'deleted_at': instance.deletedAt?.toIso8601String(),
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};

Entity _$EntityFromJson(Map<String, dynamic> json) => Entity(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  deletedAt: json['deleted_at'] == null
      ? null
      : DateTime.parse(json['deleted_at'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$EntityToJson(Entity instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'deleted_at': instance.deletedAt?.toIso8601String(),
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};
