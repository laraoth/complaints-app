import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../../../core/networking/network_info.dart';
import '../datasources/complaints_remote_data_source.dart';
import '../models/complaints_list/complaints_response.dart';

class ComplaintsRepo {
  final ComplaintsRemoteDataSource complaintsRemoteDataSource;
  final NetworkInfo networkInfo;

  ComplaintsRepo({
    required this.complaintsRemoteDataSource,
    required this.networkInfo,
  });

  Future<ComplaintsResponse> getComplaints({int page = 1}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await complaintsRemoteDataSource.getComplaints(
          page: page,
        );
        return response;
      } catch (e) {
        final exception = NetworkExceptions.getException(e);
        throw exception;
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }
}
