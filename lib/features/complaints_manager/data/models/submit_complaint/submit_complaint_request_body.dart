import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'submit_complaint_request_body.g.dart';

@JsonSerializable(explicitToJson: true)
class SubmitComplaintRequestBody {
  @JsonKey(name: "entity_id")
  final int entityId;

  final String type;
  final String description;

  @JsonKey(includeFromJson: false, includeToJson: false)
  final List<String>? location;

  @JsonKey(includeFromJson: false, includeToJson: false)
  final List<File>? attachments;

  SubmitComplaintRequestBody({
    required this.entityId,
    required this.type,
    required this.description,
    this.location,
    this.attachments,
  });

  factory SubmitComplaintRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SubmitComplaintRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SubmitComplaintRequestBodyToJson(this);
}
