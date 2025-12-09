part of 'edit_and_delete_complaint_cubit.dart';

@freezed
class EditAndDeleteComplaintState with _$EditAndDeleteComplaintState {
  const factory EditAndDeleteComplaintState.initial() = _Initial;
  const factory EditAndDeleteComplaintState.initialized() = _Initialized;
  const factory EditAndDeleteComplaintState.loading() = Loading;
  const factory EditAndDeleteComplaintState.success(
    SubmitComplaintResponse editResponse,
  ) = Success;
  const factory EditAndDeleteComplaintState.successDeleteComplaint(
    DeleteComplaintResponse deleteResponse,
  ) = SuccessDeleteComplaint;
  const factory EditAndDeleteComplaintState.error({required String error}) = Error;
  const factory EditAndDeleteComplaintState.imagePicked() = ImagePicked;
  const factory EditAndDeleteComplaintState.pdfPicked() = PdfPicked;
  const factory EditAndDeleteComplaintState.imageCleared() = ImageCleared;
  const factory EditAndDeleteComplaintState.pdfCleared() = PdfCleared;

  const factory EditAndDeleteComplaintState.locationLoading() = LocationLoading;

  const factory EditAndDeleteComplaintState.locationPicked() = LocationPicked;

  const factory EditAndDeleteComplaintState.locationError({required String error}) =
      LocationError;
}
