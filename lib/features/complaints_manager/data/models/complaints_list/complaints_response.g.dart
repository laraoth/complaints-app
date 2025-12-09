// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaints_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComplaintsResponse _$ComplaintsResponseFromJson(Map<String, dynamic> json) =>
    ComplaintsResponse(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Complaint.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      lastPage: (json['last_page'] as num?)?.toInt(),
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Links.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastPageUrl: json['last_page_url'] as String?,
      nextPageUrl: json['next_page_url'] as String?,
      prevPageUrl: json['prev_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ComplaintsResponseToJson(ComplaintsResponse instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'last_page': instance.lastPage,
      'links': instance.links,
      'last_page_url': instance.lastPageUrl,
      'next_page_url': instance.nextPageUrl,
      'prev_page_url': instance.prevPageUrl,
      'from': instance.from,
      'to': instance.to,
      'total': instance.total,
    };

Complaint _$ComplaintFromJson(Map<String, dynamic> json) => Complaint(
  id: (json['id'] as num?)?.toInt(),
  reference: json['reference'] as String?,
  userId: (json['user_id'] as num?)?.toInt(),
  entityId: (json['entity_id'] as num?)?.toInt(),
  type: json['type'] as String?,
  description: json['description'] as String?,
  location: json['location'] as String?,
  status: json['status'] as String?,
  lockedBy: json['locked_by'] as String?,
  lockedUntil: json['locked_until'] as String?,
  lockToken: json['lock_token'] as String?,
  version: (json['version'] as num?)?.toInt(),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  citizen: json['citizen'] == null
      ? null
      : Citizen.fromJson(json['citizen'] as Map<String, dynamic>),
  entity: json['entity'] == null
      ? null
      : Entity.fromJson(json['entity'] as Map<String, dynamic>),
  locker: json['locker'] as String?,
);

Map<String, dynamic> _$ComplaintToJson(Complaint instance) => <String, dynamic>{
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
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'citizen': instance.citizen,
  'entity': instance.entity,
  'locker': instance.locker,
};

Citizen _$CitizenFromJson(Map<String, dynamic> json) => Citizen(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  email: json['email'] as String?,
  emailVerifiedAt: json['email_verified_at'] as String?,
  phone: json['phone'] as String?,
  role: json['role'] as String?,
  entityId: (json['entity_id'] as num?)?.toInt(),
  isLocked: json['is_locked'] as bool?,
  deletedAt: json['deleted_at'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$CitizenToJson(Citizen instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'email_verified_at': instance.emailVerifiedAt,
  'phone': instance.phone,
  'role': instance.role,
  'entity_id': instance.entityId,
  'is_locked': instance.isLocked,
  'deleted_at': instance.deletedAt,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};

Entity _$EntityFromJson(Map<String, dynamic> json) => Entity(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  deletedAt: json['deleted_at'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$EntityToJson(Entity instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'deleted_at': instance.deletedAt,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
  url: json['url'] as String?,
  label: json['label'] as String?,
  page: (json['page'] as num?)?.toInt(),
  active: json['active'] as bool?,
);

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
  'url': instance.url,
  'label': instance.label,
  'page': instance.page,
  'active': instance.active,
};
