import 'package:complaintsapp/core/constants/shared_pref_keys.dart';
import 'package:dio/dio.dart';

import '../../../../core/helpers/app_shared_preferences.dart';
import '../../../../core/networking/api_services_impl.dart';
import '../../../../core/networking/app_link_url.dart';
import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../models/submit_complaint_request_body.dart';
import '../models/submit_complaint_response.dart';

abstract class SubmitComplaintRemoteDataSource {
  Future<SubmitComplaintResponse> submit(SubmitComplaintRequestBody submit);
}

class SubmitComplaintRemoteDataSourceImp
    implements SubmitComplaintRemoteDataSource {
  final ApiServicesImpl apiServicesImpl;

  SubmitComplaintRemoteDataSourceImp({required this.apiServicesImpl});

  @override
  Future<SubmitComplaintResponse> submit(
    SubmitComplaintRequestBody submit,
  ) async {
    final formMap = <String, dynamic>{
      'entity_id': submit.entityId,
      'type': submit.type,
      'description': submit.description,
    };
    if (submit.attachments != null && submit.attachments!.isNotEmpty) {
      for (int i = 0; i < submit.attachments!.length; i++) {
        final file = submit.attachments![i];
        formMap['attachments[$i]'] = await MultipartFile.fromFile(
          file.path,
          filename: file.path.split('/').last,
        );
      }
    }

    if (submit.location != null && submit.location!.length == 2) {
      formMap['location[lat]'] = submit.location![0];
      formMap['location[lng]'] = submit.location![1];
    }

    final formData = FormData.fromMap(formMap);
    final sharedPref = AppSharedPreferences();

    try {
      final result = await apiServicesImpl.post(
        AppLinkUrl.submitComplaint,
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
}
