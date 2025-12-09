import 'package:complaintsapp/core/constants/shared_pref_keys.dart';
import 'package:complaintsapp/core/helpers/app_shared_preferences.dart';
import 'package:dio/dio.dart';

import '../../../../core/networking/api_services_impl.dart';
import '../../../../core/networking/app_link_url.dart';
import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../models/complaints_list/complaints_response.dart';

abstract class ComplaintsRemoteDataSource {
  Future<ComplaintsResponse> getComplaints({int page});
}

class ComplaintsRemoteDataSourceImpl implements ComplaintsRemoteDataSource {
  final ApiServicesImpl apiServicesImpl;

  ComplaintsRemoteDataSourceImpl({required this.apiServicesImpl});

  @override
  Future<ComplaintsResponse> getComplaints({int page = 1}) async {
    try {
      final sharedPref = AppSharedPreferences();
      final token = sharedPref.getString(AppSharedPrefKeys.token);

      final result = await apiServicesImpl.get(
        AppLinkUrl.complaints,
        // queryParams: {'page': page},
        token: token,
      );

      return ComplaintsResponse.fromJson(result);
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }
}
