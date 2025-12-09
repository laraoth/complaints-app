import 'package:json_annotation/json_annotation.dart';

part 'submit_complaint_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SubmitComplaintResponse {
  final String? message;
  final ComplaintData? data;

  SubmitComplaintResponse({this.message, this.data});

  factory SubmitComplaintResponse.fromJson(Map<String, dynamic> json) =>
      _$SubmitComplaintResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SubmitComplaintResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ComplaintData {
  final int? id;
  final String? reference;

  @JsonKey(name: 'user_id')
  final int? userId;

  @JsonKey(name: 'entity_id')
  final int? entityId;

  final String? type;
  final String? description;
  final String? location;
  final String? status;

  @JsonKey(name: 'locked_by')
  final int? lockedBy;

  @JsonKey(name: 'locked_until')
  final String? lockedUntil;

  @JsonKey(name: 'lock_token')
  final String? lockToken;

  final int? version;

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  final Citizen? citizen;
  final Entity? entity;

  ComplaintData({
    this.id,
    this.reference,
    this.userId,
    this.entityId,
    this.type,
    this.description,
    this.location,
    this.status,
    this.lockedBy,
    this.lockedUntil,
    this.lockToken,
    this.version,
    this.createdAt,
    this.updatedAt,
    this.citizen,
    this.entity,
  });

  factory ComplaintData.fromJson(Map<String, dynamic> json) =>
      _$ComplaintDataFromJson(json);

  Map<String, dynamic> toJson() => _$ComplaintDataToJson(this);
}

@JsonSerializable()
class Citizen {
  final int? id;
  final String? name;
  final String? email;

  @JsonKey(name: 'email_verified_at')
  final DateTime? emailVerifiedAt;

  final String? phone;
  final String? role;

  @JsonKey(name: 'entity_id')
  final int? entityId;

  @JsonKey(name: 'is_locked')
  final bool? isLocked;

  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  Citizen({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.phone,
    this.role,
    this.entityId,
    this.isLocked,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  factory Citizen.fromJson(Map<String, dynamic> json) =>
      _$CitizenFromJson(json);

  Map<String, dynamic> toJson() => _$CitizenToJson(this);
}

@JsonSerializable()
class Entity {
  final int? id;
  final String? name;
  final String? description;

  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  Entity({
    this.id,
    this.name,
    this.description,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  factory Entity.fromJson(Map<String, dynamic> json) => _$EntityFromJson(json);

  Map<String, dynamic> toJson() => _$EntityToJson(this);
}
