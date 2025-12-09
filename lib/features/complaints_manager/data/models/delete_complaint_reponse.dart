import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_complaint_reponse.g.dart';

@JsonSerializable()
class DeleteComplaintResponse {
  final String message;

  DeleteComplaintResponse({required this.message});

  factory DeleteComplaintResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteComplaintResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteComplaintResponseToJson(this);
}
