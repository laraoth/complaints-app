import 'dart:io';

import 'package:complaintsapp/features/submit_complaint/data/models/submit_complaint_response.dart';
import 'package:complaintsapp/features/submit_complaint/data/repos/submit_complaint_repo.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/networking/error/error_handler/network_exceptions.dart';
import '../data/models/complaint_static_data.dart';
import '../data/models/entity_of_complaint.dart';
import '../data/models/submit_complaint_request_body.dart';
import '../data/models/type_of_complaint.dart';

part 'submit_complaint_state.dart';
part 'submit_complaint_cubit.freezed.dart';

class SubmitComplaintCubit extends Cubit<SubmitComplaintState> {
  final SubmitComplaintRepo _sendComplaintRepo;
  SubmitComplaintCubit(this._sendComplaintRepo)
    : super(SubmitComplaintState.initial());

  final TextEditingController locationController = TextEditingController();

  String? currentLat;
  String? currentLng;

  File? image;
  File? pdfFile;

  final TextEditingController descriptionController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  int selectedEntityId = 1;
  int selectedTypeId = 1;
  String selectedTypeName = "Electricity outage";

  final List<EntityOfComplaint> entityOfComplaint = kEntitiesOfComplaint;

  final List<TypeOfComplaint> typeOfComplaint = kTypesOfComplaint;

  Future<void> sendComplaint() async {
    if (descriptionController.text.length < 10) {
      emit(
        const SubmitComplaintState.error(
          error: "Description must be at least 10 characters long.",
        ),
      );
      return;
    }
    emit(SubmitComplaintState.loading());
    final List<File> attachments = [];
    if (image != null) attachments.add(image!);
    if (pdfFile != null) attachments.add(pdfFile!);

    final List<String> location = [];

    if (currentLat != null && currentLng != null) {
      location.add(currentLat!);
      location.add(currentLng!);
    } else if (locationController.text.trim().isNotEmpty) {
      location.add(locationController.text.trim());
    }
    try {
      final request = SubmitComplaintRequestBody(
        entityId: selectedEntityId,
        type: selectedTypeName,
        description: descriptionController.text.trim(),
        location: location,
        attachments: attachments,
      );

      final response = await _sendComplaintRepo.sendComplaint(request);
      emit(SubmitComplaintState.success(response));
    } catch (e) {
      final exception = NetworkExceptions.getException(e);
      final message = NetworkExceptions.getErrorMessage(exception);
      emit(SubmitComplaintState.error(error: message));
    }
  }

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      emit(const SubmitComplaintState.imagePicked());
    }
  }

  Future<void> pickPdf() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null && result.files.single.path != null) {
      pdfFile = File(result.files.single.path!);

      emit(const SubmitComplaintState.pdfPicked());
    }
  }

  Future<void> getCurrentLocation() async {
    emit(const SubmitComplaintState.locationLoading());

    try {
      bool serviceEnabled;
      LocationPermission permission;

      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        emit(
          const SubmitComplaintState.locationError(
            error:
                "Location (GPS) service is disabled, please enable it in the settings.",
          ),
        );
        return;
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          emit(
            const SubmitComplaintState.locationError(
              error: "Access to the site has been denied.",
            ),
          );
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        emit(
          const SubmitComplaintState.locationError(
            error:
                "Access to the site has been permanently revoked. Please reactivate it manually from your system settings.",
          ),
        );
        return;
      }

      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          distanceFilter: 0,
        ),
      );

      currentLat = position.latitude.toString();
      currentLng = position.longitude.toString();

      locationController.text = "Lat: $currentLat, Lng: $currentLng";

      emit(const SubmitComplaintState.locationPicked());
    } catch (e) {
      emit(
        SubmitComplaintState.locationError(
          error:
              "An error occurred while fetching the location, please try again.",
        ),
      );
    }
  }

  void clearImage() {
    image = null;
    emit(const SubmitComplaintState.imageCleared());
  }

  void clearPdf() {
    pdfFile = null;
    emit(const SubmitComplaintState.pdfCleared());
  }

  @override
  Future<void> close() {
    locationController.dispose();
    descriptionController.dispose();
    return super.close();
  }
}
