part of 'submit_complaint_cubit.dart';

@freezed
class SubmitComplaintState with _$SubmitComplaintState {
  const factory SubmitComplaintState.initial() = _Initial;
  const factory SubmitComplaintState.loading() = Loading;
  const factory SubmitComplaintState.success(
    SubmitComplaintResponse submitResponse,
  ) = Success;
  const factory SubmitComplaintState.error({required String error}) = Error;

  const factory SubmitComplaintState.imagePicked() = ImagePicked;
  const factory SubmitComplaintState.pdfPicked() = PdfPicked;
  const factory SubmitComplaintState.imageCleared() = ImageCleared;
  const factory SubmitComplaintState.pdfCleared() = PdfCleared;

  const factory SubmitComplaintState.locationLoading() = LocationLoading;

  const factory SubmitComplaintState.locationPicked() = LocationPicked;

  const factory SubmitComplaintState.locationError({required String error}) =
      LocationError;
}
