// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_reset_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PasswordResetState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordResetState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PasswordResetState()';
}


}

/// @nodoc
class $PasswordResetStateCopyWith<$Res>  {
$PasswordResetStateCopyWith(PasswordResetState _, $Res Function(PasswordResetState) __);
}


/// Adds pattern-matching-related methods to [PasswordResetState].
extension PasswordResetStatePatterns on PasswordResetState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Success value)?  success,TResult Function( SuccessSubmitResetPass value)?  successSubmitResetPass,TResult Function( Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case SuccessSubmitResetPass() when successSubmitResetPass != null:
return successSubmitResetPass(_that);case Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Success value)  success,required TResult Function( SuccessSubmitResetPass value)  successSubmitResetPass,required TResult Function( Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Loading():
return loading(_that);case Success():
return success(_that);case SuccessSubmitResetPass():
return successSubmitResetPass(_that);case Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Success value)?  success,TResult? Function( SuccessSubmitResetPass value)?  successSubmitResetPass,TResult? Function( Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case SuccessSubmitResetPass() when successSubmitResetPass != null:
return successSubmitResetPass(_that);case Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( RequestResetPassResponse requestResetPassResponse)?  success,TResult Function( SubmitResetPassResponse submitResetPassResponse)?  successSubmitResetPass,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.requestResetPassResponse);case SuccessSubmitResetPass() when successSubmitResetPass != null:
return successSubmitResetPass(_that.submitResetPassResponse);case Error() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( RequestResetPassResponse requestResetPassResponse)  success,required TResult Function( SubmitResetPassResponse submitResetPassResponse)  successSubmitResetPass,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Loading():
return loading();case Success():
return success(_that.requestResetPassResponse);case SuccessSubmitResetPass():
return successSubmitResetPass(_that.submitResetPassResponse);case Error():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( RequestResetPassResponse requestResetPassResponse)?  success,TResult? Function( SubmitResetPassResponse submitResetPassResponse)?  successSubmitResetPass,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.requestResetPassResponse);case SuccessSubmitResetPass() when successSubmitResetPass != null:
return successSubmitResetPass(_that.submitResetPassResponse);case Error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements PasswordResetState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PasswordResetState.initial()';
}


}




/// @nodoc


class Loading implements PasswordResetState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PasswordResetState.loading()';
}


}




/// @nodoc


class Success implements PasswordResetState {
  const Success(this.requestResetPassResponse);
  

 final  RequestResetPassResponse requestResetPassResponse;

/// Create a copy of PasswordResetState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&(identical(other.requestResetPassResponse, requestResetPassResponse) || other.requestResetPassResponse == requestResetPassResponse));
}


@override
int get hashCode => Object.hash(runtimeType,requestResetPassResponse);

@override
String toString() {
  return 'PasswordResetState.success(requestResetPassResponse: $requestResetPassResponse)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $PasswordResetStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 RequestResetPassResponse requestResetPassResponse
});




}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of PasswordResetState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? requestResetPassResponse = null,}) {
  return _then(Success(
null == requestResetPassResponse ? _self.requestResetPassResponse : requestResetPassResponse // ignore: cast_nullable_to_non_nullable
as RequestResetPassResponse,
  ));
}


}

/// @nodoc


class SuccessSubmitResetPass implements PasswordResetState {
  const SuccessSubmitResetPass(this.submitResetPassResponse);
  

 final  SubmitResetPassResponse submitResetPassResponse;

/// Create a copy of PasswordResetState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessSubmitResetPassCopyWith<SuccessSubmitResetPass> get copyWith => _$SuccessSubmitResetPassCopyWithImpl<SuccessSubmitResetPass>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessSubmitResetPass&&(identical(other.submitResetPassResponse, submitResetPassResponse) || other.submitResetPassResponse == submitResetPassResponse));
}


@override
int get hashCode => Object.hash(runtimeType,submitResetPassResponse);

@override
String toString() {
  return 'PasswordResetState.successSubmitResetPass(submitResetPassResponse: $submitResetPassResponse)';
}


}

/// @nodoc
abstract mixin class $SuccessSubmitResetPassCopyWith<$Res> implements $PasswordResetStateCopyWith<$Res> {
  factory $SuccessSubmitResetPassCopyWith(SuccessSubmitResetPass value, $Res Function(SuccessSubmitResetPass) _then) = _$SuccessSubmitResetPassCopyWithImpl;
@useResult
$Res call({
 SubmitResetPassResponse submitResetPassResponse
});




}
/// @nodoc
class _$SuccessSubmitResetPassCopyWithImpl<$Res>
    implements $SuccessSubmitResetPassCopyWith<$Res> {
  _$SuccessSubmitResetPassCopyWithImpl(this._self, this._then);

  final SuccessSubmitResetPass _self;
  final $Res Function(SuccessSubmitResetPass) _then;

/// Create a copy of PasswordResetState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? submitResetPassResponse = null,}) {
  return _then(SuccessSubmitResetPass(
null == submitResetPassResponse ? _self.submitResetPassResponse : submitResetPassResponse // ignore: cast_nullable_to_non_nullable
as SubmitResetPassResponse,
  ));
}


}

/// @nodoc


class Error implements PasswordResetState {
  const Error({required this.error});
  

 final  String error;

/// Create a copy of PasswordResetState
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
  return 'PasswordResetState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $PasswordResetStateCopyWith<$Res> {
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

/// Create a copy of PasswordResetState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(Error(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
