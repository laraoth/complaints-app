// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerifyOtpState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyOtpState()';
}


}

/// @nodoc
class $VerifyOtpStateCopyWith<$Res>  {
$VerifyOtpStateCopyWith(VerifyOtpState _, $Res Function(VerifyOtpState) __);
}


/// Adds pattern-matching-related methods to [VerifyOtpState].
extension VerifyOtpStatePatterns on VerifyOtpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Success value)?  success,TResult Function( Error value)?  error,TResult Function( TimerTick value)?  timerTick,TResult Function( TimerFinished value)?  timerFinished,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Error() when error != null:
return error(_that);case TimerTick() when timerTick != null:
return timerTick(_that);case TimerFinished() when timerFinished != null:
return timerFinished(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Success value)  success,required TResult Function( Error value)  error,required TResult Function( TimerTick value)  timerTick,required TResult Function( TimerFinished value)  timerFinished,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Loading():
return loading(_that);case Success():
return success(_that);case Error():
return error(_that);case TimerTick():
return timerTick(_that);case TimerFinished():
return timerFinished(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Success value)?  success,TResult? Function( Error value)?  error,TResult? Function( TimerTick value)?  timerTick,TResult? Function( TimerFinished value)?  timerFinished,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Error() when error != null:
return error(_that);case TimerTick() when timerTick != null:
return timerTick(_that);case TimerFinished() when timerFinished != null:
return timerFinished(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( VerifyOtpResponse verifyOtpResponse)?  success,TResult Function( String error)?  error,TResult Function( int remainingSeconds)?  timerTick,TResult Function()?  timerFinished,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.verifyOtpResponse);case Error() when error != null:
return error(_that.error);case TimerTick() when timerTick != null:
return timerTick(_that.remainingSeconds);case TimerFinished() when timerFinished != null:
return timerFinished();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( VerifyOtpResponse verifyOtpResponse)  success,required TResult Function( String error)  error,required TResult Function( int remainingSeconds)  timerTick,required TResult Function()  timerFinished,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Loading():
return loading();case Success():
return success(_that.verifyOtpResponse);case Error():
return error(_that.error);case TimerTick():
return timerTick(_that.remainingSeconds);case TimerFinished():
return timerFinished();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( VerifyOtpResponse verifyOtpResponse)?  success,TResult? Function( String error)?  error,TResult? Function( int remainingSeconds)?  timerTick,TResult? Function()?  timerFinished,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.verifyOtpResponse);case Error() when error != null:
return error(_that.error);case TimerTick() when timerTick != null:
return timerTick(_that.remainingSeconds);case TimerFinished() when timerFinished != null:
return timerFinished();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements VerifyOtpState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyOtpState.initial()';
}


}




/// @nodoc


class Loading implements VerifyOtpState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyOtpState.loading()';
}


}




/// @nodoc


class Success implements VerifyOtpState {
  const Success(this.verifyOtpResponse);
  

 final  VerifyOtpResponse verifyOtpResponse;

/// Create a copy of VerifyOtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&(identical(other.verifyOtpResponse, verifyOtpResponse) || other.verifyOtpResponse == verifyOtpResponse));
}


@override
int get hashCode => Object.hash(runtimeType,verifyOtpResponse);

@override
String toString() {
  return 'VerifyOtpState.success(verifyOtpResponse: $verifyOtpResponse)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $VerifyOtpStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 VerifyOtpResponse verifyOtpResponse
});




}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of VerifyOtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? verifyOtpResponse = null,}) {
  return _then(Success(
null == verifyOtpResponse ? _self.verifyOtpResponse : verifyOtpResponse // ignore: cast_nullable_to_non_nullable
as VerifyOtpResponse,
  ));
}


}

/// @nodoc


class Error implements VerifyOtpState {
  const Error({required this.error});
  

 final  String error;

/// Create a copy of VerifyOtpState
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
  return 'VerifyOtpState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $VerifyOtpStateCopyWith<$Res> {
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

/// Create a copy of VerifyOtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(Error(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TimerTick implements VerifyOtpState {
  const TimerTick(this.remainingSeconds);
  

 final  int remainingSeconds;

/// Create a copy of VerifyOtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimerTickCopyWith<TimerTick> get copyWith => _$TimerTickCopyWithImpl<TimerTick>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerTick&&(identical(other.remainingSeconds, remainingSeconds) || other.remainingSeconds == remainingSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,remainingSeconds);

@override
String toString() {
  return 'VerifyOtpState.timerTick(remainingSeconds: $remainingSeconds)';
}


}

/// @nodoc
abstract mixin class $TimerTickCopyWith<$Res> implements $VerifyOtpStateCopyWith<$Res> {
  factory $TimerTickCopyWith(TimerTick value, $Res Function(TimerTick) _then) = _$TimerTickCopyWithImpl;
@useResult
$Res call({
 int remainingSeconds
});




}
/// @nodoc
class _$TimerTickCopyWithImpl<$Res>
    implements $TimerTickCopyWith<$Res> {
  _$TimerTickCopyWithImpl(this._self, this._then);

  final TimerTick _self;
  final $Res Function(TimerTick) _then;

/// Create a copy of VerifyOtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? remainingSeconds = null,}) {
  return _then(TimerTick(
null == remainingSeconds ? _self.remainingSeconds : remainingSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class TimerFinished implements VerifyOtpState {
  const TimerFinished();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerFinished);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyOtpState.timerFinished()';
}


}




// dart format on
