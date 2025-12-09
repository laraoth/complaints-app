part of 'complaints_cubit.dart';

@freezed
class ComplaintsState with _$ComplaintsState {
  const factory ComplaintsState.initial() = _Initial;
  const factory ComplaintsState.loading() = Loading;
  const factory ComplaintsState.success(ComplaintsResponse response) = Success;
  const factory ComplaintsState.error({required String error}) = Error;
}
