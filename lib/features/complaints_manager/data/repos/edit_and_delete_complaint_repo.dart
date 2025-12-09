import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../../../core/networking/network_info.dart';
import '../datasources/edit_and_delete_complaint_remote_data_source.dart';
import '../models/delete_complaint_reponse.dart';
import '../models/submit_complaint/submit_complaint_request_body.dart';
import '../models/submit_complaint/submit_complaint_response.dart';

class EditAndDeleteComplaintRepo {
  final EditAndDeleteComplaintRemoteDataSource
  editAndDeleteComplaintRemoteDataSource;
  final NetworkInfo networkInfo;

  EditAndDeleteComplaintRepo({
    required this.editAndDeleteComplaintRemoteDataSource,
    required this.networkInfo,
  });

  Future<SubmitComplaintResponse> edit(
    SubmitComplaintRequestBody editComplaintRequest,
    int id,
  ) async {
    final SubmitComplaintRequestBody editComplaint = SubmitComplaintRequestBody(
      entityId: editComplaintRequest.entityId,
      type: editComplaintRequest.type,
      description: editComplaintRequest.description,
      location: editComplaintRequest.location,
      attachments: editComplaintRequest.attachments,
    );

    if (await networkInfo.isConnected) {
      try {
        final response = await editAndDeleteComplaintRemoteDataSource.edit(
          editComplaint,
          id,
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

  Future<DeleteComplaintResponse> delete(int id) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await editAndDeleteComplaintRemoteDataSource.delete(
          id,
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
