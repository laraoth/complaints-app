import 'package:json_annotation/json_annotation.dart';
part 'complaints_response.g.dart';

@JsonSerializable()
class ComplaintsResponse {
  @JsonKey(name: 'current_page')
  final int? currentPage;

  final List<Complaint>? data;

  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;

  @JsonKey(name: 'last_page')
  final int? lastPage;

  final List<Links>? links;

  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;

  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;

  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;

  final int? from;
  final int? to;
  final int? total;

  ComplaintsResponse({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.lastPage,
    this.links,
    this.lastPageUrl,
    this.nextPageUrl,
    this.prevPageUrl,
    this.from,
    this.to,
    this.total,
  });

  factory ComplaintsResponse.fromJson(Map<String, dynamic> json) =>
      _$ComplaintsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ComplaintsResponseToJson(this);
}

@JsonSerializable()
class Complaint {
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
  final String? lockedBy;

  @JsonKey(name: 'locked_until')
  final String? lockedUntil;

  @JsonKey(name: 'lock_token')
  final String? lockToken;

  final int? version;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  final Citizen? citizen;
  final Entity? entity;
  final String? locker;
  Complaint({
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
    this.locker,
  });

  factory Complaint.fromJson(Map<String, dynamic> json) =>
      _$ComplaintFromJson(json);

  Map<String, dynamic> toJson() => _$ComplaintToJson(this);
}

@JsonSerializable()
class Citizen {
  final int? id;
  final String? name;
  final String? email;

  @JsonKey(name: 'email_verified_at')
  final String? emailVerifiedAt;

  final String? phone;
  final String? role;

  @JsonKey(name: 'entity_id')
  final int? entityId;

  @JsonKey(name: 'is_locked')
  final bool? isLocked;

  @JsonKey(name: 'deleted_at')
  final String? deletedAt;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

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
  final String? deletedAt;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

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

@JsonSerializable()
class Links {
  final String? url;
  final String? label;
  final int? page;
  final bool? active;

  Links({this.url, this.label, this.page, this.active});

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}
