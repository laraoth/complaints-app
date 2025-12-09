// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_complaint_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitComplaintState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitComplaintState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitComplaintState()';
}


}

/// @nodoc
class $SubmitComplaintStateCopyWith<$Res>  {
$SubmitComplaintStateCopyWith(SubmitComplaintState _, $Res Function(SubmitComplaintState) __);
}


/// Adds pattern-matching-related methods to [SubmitComplaintState].
extension SubmitComplaintStatePatterns on SubmitComplaintState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Success value)?  success,TResult Function( Error value)?  error,TResult Function( ImagePicked value)?  imagePicked,TResult Function( PdfPicked value)?  pdfPicked,TResult Function( ImageCleared value)?  imageCleared,TResult Function( PdfCleared value)?  pdfCleared,TResult Function( LocationLoading value)?  locationLoading,TResult Function( LocationPicked value)?  locationPicked,TResult Function( LocationError value)?  locationError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Error() when error != null:
return error(_that);case ImagePicked() when imagePicked != null:
return imagePicked(_that);case PdfPicked() when pdfPicked != null:
return pdfPicked(_that);case ImageCleared() when imageCleared != null:
return imageCleared(_that);case PdfCleared() when pdfCleared != null:
return pdfCleared(_that);case LocationLoading() when locationLoading != null:
return locationLoading(_that);case LocationPicked() when locationPicked != null:
return locationPicked(_that);case LocationError() when locationError != null:
return locationError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Success value)  success,required TResult Function( Error value)  error,required TResult Function( ImagePicked value)  imagePicked,required TResult Function( PdfPicked value)  pdfPicked,required TResult Function( ImageCleared value)  imageCleared,required TResult Function( PdfCleared value)  pdfCleared,required TResult Function( LocationLoading value)  locationLoading,required TResult Function( LocationPicked value)  locationPicked,required TResult Function( LocationError value)  locationError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Loading():
return loading(_that);case Success():
return success(_that);case Error():
return error(_that);case ImagePicked():
return imagePicked(_that);case PdfPicked():
return pdfPicked(_that);case ImageCleared():
return imageCleared(_that);case PdfCleared():
return pdfCleared(_that);case LocationLoading():
return locationLoading(_that);case LocationPicked():
return locationPicked(_that);case LocationError():
return locationError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Success value)?  success,TResult? Function( Error value)?  error,TResult? Function( ImagePicked value)?  imagePicked,TResult? Function( PdfPicked value)?  pdfPicked,TResult? Function( ImageCleared value)?  imageCleared,TResult? Function( PdfCleared value)?  pdfCleared,TResult? Function( LocationLoading value)?  locationLoading,TResult? Function( LocationPicked value)?  locationPicked,TResult? Function( LocationError value)?  locationError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Error() when error != null:
return error(_that);case ImagePicked() when imagePicked != null:
return imagePicked(_that);case PdfPicked() when pdfPicked != null:
return pdfPicked(_that);case ImageCleared() when imageCleared != null:
return imageCleared(_that);case PdfCleared() when pdfCleared != null:
return pdfCleared(_that);case LocationLoading() when locationLoading != null:
return locationLoading(_that);case LocationPicked() when locationPicked != null:
return locationPicked(_that);case LocationError() when locationError != null:
return locationError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( SubmitComplaintResponse submitResponse)?  success,TResult Function( String error)?  error,TResult Function()?  imagePicked,TResult Function()?  pdfPicked,TResult Function()?  imageCleared,TResult Function()?  pdfCleared,TResult Function()?  locationLoading,TResult Function()?  locationPicked,TResult Function( String error)?  locationError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.submitResponse);case Error() when error != null:
return error(_that.error);case ImagePicked() when imagePicked != null:
return imagePicked();case PdfPicked() when pdfPicked != null:
return pdfPicked();case ImageCleared() when imageCleared != null:
return imageCleared();case PdfCleared() when pdfCleared != null:
return pdfCleared();case LocationLoading() when locationLoading != null:
return locationLoading();case LocationPicked() when locationPicked != null:
return locationPicked();case LocationError() when locationError != null:
return locationError(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( SubmitComplaintResponse submitResponse)  success,required TResult Function( String error)  error,required TResult Function()  imagePicked,required TResult Function()  pdfPicked,required TResult Function()  imageCleared,required TResult Function()  pdfCleared,required TResult Function()  locationLoading,required TResult Function()  locationPicked,required TResult Function( String error)  locationError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Loading():
return loading();case Success():
return success(_that.submitResponse);case Error():
return error(_that.error);case ImagePicked():
return imagePicked();case PdfPicked():
return pdfPicked();case ImageCleared():
return imageCleared();case PdfCleared():
return pdfCleared();case LocationLoading():
return locationLoading();case LocationPicked():
return locationPicked();case LocationError():
return locationError(_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( SubmitComplaintResponse submitResponse)?  success,TResult? Function( String error)?  error,TResult? Function()?  imagePicked,TResult? Function()?  pdfPicked,TResult? Function()?  imageCleared,TResult? Function()?  pdfCleared,TResult? Function()?  locationLoading,TResult? Function()?  locationPicked,TResult? Function( String error)?  locationError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.submitResponse);case Error() when error != null:
return error(_that.error);case ImagePicked() when imagePicked != null:
return imagePicked();case PdfPicked() when pdfPicked != null:
return pdfPicked();case ImageCleared() when imageCleared != null:
return imageCleared();case PdfCleared() when pdfCleared != null:
return pdfCleared();case LocationLoading() when locationLoading != null:
return locationLoading();case LocationPicked() when locationPicked != null:
return locationPicked();case LocationError() when locationError != null:
return locationError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SubmitComplaintState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitComplaintState.initial()';
}


}




/// @nodoc


class Loading implements SubmitComplaintState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitComplaintState.loading()';
}


}




/// @nodoc


class Success implements SubmitComplaintState {
  const Success(this.submitResponse);
  

 final  SubmitComplaintResponse submitResponse;

/// Create a copy of SubmitComplaintState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&(identical(other.submitResponse, submitResponse) || other.submitResponse == submitResponse));
}


@override
int get hashCode => Object.hash(runtimeType,submitResponse);

@override
String toString() {
  return 'SubmitComplaintState.success(submitResponse: $submitResponse)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $SubmitComplaintStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 SubmitComplaintResponse submitResponse
});




}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of SubmitComplaintState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? submitResponse = null,}) {
  return _then(Success(
null == submitResponse ? _self.submitResponse : submitResponse // ignore: cast_nullable_to_non_nullable
as SubmitComplaintResponse,
  ));
}


}

/// @nodoc


class Error implements SubmitComplaintState {
  const Error({required this.error});
  

 final  String error;

/// Create a copy of SubmitComplaintState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<Error> get copyWith => _$ErrorCopyWithImpl<Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SubmitComplaintState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $SubmitComplaintStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

/// Create a copy of SubmitComplaintState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(Error(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ImagePicked implements SubmitComplaintState {
  const ImagePicked();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImagePicked);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitComplaintState.imagePicked()';
}


}




/// @nodoc


class PdfPicked implements SubmitComplaintState {
  const PdfPicked();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PdfPicked);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitComplaintState.pdfPicked()';
}


}




/// @nodoc


class ImageCleared implements SubmitComplaintState {
  const ImageCleared();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageCleared);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitComplaintState.imageCleared()';
}


}




/// @nodoc


class PdfCleared implements SubmitComplaintState {
  const PdfCleared();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PdfCleared);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitComplaintState.pdfCleared()';
}


}




/// @nodoc


class LocationLoading implements SubmitComplaintState {
  const LocationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitComplaintState.locationLoading()';
}


}




/// @nodoc


class LocationPicked implements SubmitComplaintState {
  const LocationPicked();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationPicked);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitComplaintState.locationPicked()';
}


}




/// @nodoc


class LocationError implements SubmitComplaintState {
  const LocationError({required this.error});
  

 final  String error;

/// Create a copy of SubmitComplaintState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationErrorCopyWith<LocationError> get copyWith => _$LocationErrorCopyWithImpl<LocationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SubmitComplaintState.locationError(error: $error)';
}


}

/// @nodoc
abstract mixin class $LocationErrorCopyWith<$Res> implements $SubmitComplaintStateCopyWith<$Res> {
  factory $LocationErrorCopyWith(LocationError value, $Res Function(LocationError) _then) = _$LocationErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$LocationErrorCopyWithImpl<$Res>
    implements $LocationErrorCopyWith<$Res> {
  _$LocationErrorCopyWithImpl(this._self, this._then);

  final LocationError _self;
  final $Res Function(LocationError) _then;

/// Create a copy of SubmitComplaintState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(LocationError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
