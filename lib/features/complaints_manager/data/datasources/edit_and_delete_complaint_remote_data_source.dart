import 'package:complaintsapp/core/constants/shared_pref_keys.dart';
import 'package:dio/dio.dart';

import '../../../../core/helpers/app_shared_preferences.dart';
import '../../../../core/networking/api_services_impl.dart';
import '../../../../core/networking/app_link_url.dart';
import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../models/delete_complaint_reponse.dart';
import '../models/submit_complaint/submit_complaint_request_body.dart';
import '../models/submit_complaint/submit_complaint_response.dart';

abstract class EditAndDeleteComplaintRemoteDataSource {
  Future<SubmitComplaintResponse> edit(SubmitComplaintRequestBody edit, int id);
  Future<DeleteComplaintResponse> delete(int id);
}

class EditAndDeleteComplaintRemoteDataSourceImp
    implements EditAndDeleteComplaintRemoteDataSource {
  final ApiServicesImpl apiServicesImpl;

  EditAndDeleteComplaintRemoteDataSourceImp({required this.apiServicesImpl});

  @override
  Future<SubmitComplaintResponse> edit(
    SubmitComplaintRequestBody edit,
    int id,
  ) async {
    final formMap = <String, dynamic>{
      'entity_id': edit.entityId,
      'type': edit.type,
      'description': edit.description,
    };
    if (edit.attachments != null && edit.attachments!.isNotEmpty) {
      for (int i = 0; i < edit.attachments!.length; i++) {
        final file = edit.attachments![i];
        formMap['attachments[$i]'] = await MultipartFile.fromFile(
          file.path,
          filename: file.path.split('/').last,
        );
      }
    }

    if (edit.location != null && edit.location!.length == 2) {
      formMap['location[lat]'] = edit.location![0];
      formMap['location[lng]'] = edit.location![1];
    }

    final formData = FormData.fromMap(formMap);
    final sharedPref = AppSharedPreferences();

    try {
      final result = await apiServicesImpl.patch(
        "${AppLinkUrl.submitComplaint}/$id",
        formData: formData,
        token: sharedPref.getString(AppSharedPrefKeys.token),
      );

      final response = SubmitComplaintResponse.fromJson(result);

      return response;
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }

  @override
  Future<DeleteComplaintResponse> delete(int id) async {
    final sharedPref = AppSharedPreferences();
    try {
      final result = await apiServicesImpl.delete(
        "${AppLinkUrl.submitComplaint}/$id",
        token: sharedPref.getString(AppSharedPrefKeys.token),
      );

      final response = DeleteComplaintResponse.fromJson(result);

      return response;
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }
}
