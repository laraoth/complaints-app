import 'package:complaintsapp/features/submit_complaint/data/models/submit_complaint_request_body.dart';

import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../../../core/networking/network_info.dart';
import '../datasources/submit_complaint_remote_data_source.dart';
import '../models/submit_complaint_response.dart';

class SubmitComplaintRepo {
  final SubmitComplaintRemoteDataSource submitComplaintRemoteDataSource;
  final NetworkInfo networkInfo;

  SubmitComplaintRepo({
    required this.submitComplaintRemoteDataSource,
    required this.networkInfo,
  });

  Future<SubmitComplaintResponse> sendComplaint(
    SubmitComplaintRequestBody submitComplaintRequest,
  ) async {
    final SubmitComplaintRequestBody submitComplaint =
        SubmitComplaintRequestBody(
          entityId: submitComplaintRequest.entityId,
          type: submitComplaintRequest.type,
          description: submitComplaintRequest.description,
          location: submitComplaintRequest.location,
          attachments: submitComplaintRequest.attachments,
        );

    if (await networkInfo.isConnected) {
      try {
        final response = await submitComplaintRemoteDataSource.submit(
          submitComplaint,
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
