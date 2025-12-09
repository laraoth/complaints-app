import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../data/models/complaints_list/complaints_response.dart';
import '../../data/repos/complaints_repo.dart';

part 'complaints_state.dart';
part 'complaints_cubit.freezed.dart';

class ComplaintsCubit extends Cubit<ComplaintsState> {
  final ComplaintsRepo _complaintsRepo;

  ComplaintsCubit(this._complaintsRepo) : super(ComplaintsState.initial());

  Future<void> fetchComplaints({int page = 1}) async {
    emit(const ComplaintsState.loading());
    try {
      final response = await _complaintsRepo.getComplaints(page: page);
      emit(ComplaintsState.success(response));
    } catch (e) {
      final exception = NetworkExceptions.getException(e);
      final message = NetworkExceptions.getErrorMessage(exception);
      emit(ComplaintsState.error(error: message));
    }
  }
}
