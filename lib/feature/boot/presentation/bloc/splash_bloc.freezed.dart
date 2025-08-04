// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashEvent()';
}


}

/// @nodoc
class $SplashEventCopyWith<$Res>  {
$SplashEventCopyWith(SplashEvent _, $Res Function(SplashEvent) __);
}


/// Adds pattern-matching-related methods to [SplashEvent].
extension SplashEventPatterns on SplashEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CheckSession value)?  checkSession,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckSession() when checkSession != null:
return checkSession(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CheckSession value)  checkSession,}){
final _that = this;
switch (_that) {
case _CheckSession():
return checkSession(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CheckSession value)?  checkSession,}){
final _that = this;
switch (_that) {
case _CheckSession() when checkSession != null:
return checkSession(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkSession,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckSession() when checkSession != null:
return checkSession();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkSession,}) {final _that = this;
switch (_that) {
case _CheckSession():
return checkSession();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkSession,}) {final _that = this;
switch (_that) {
case _CheckSession() when checkSession != null:
return checkSession();case _:
  return null;

}
}

}

/// @nodoc


class _CheckSession implements SplashEvent {
  const _CheckSession();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckSession);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashEvent.checkSession()';
}


}




/// @nodoc
mixin _$SplashState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState()';
}


}

/// @nodoc
class $SplashStateCopyWith<$Res>  {
$SplashStateCopyWith(SplashState _, $Res Function(SplashState) __);
}


/// Adds pattern-matching-related methods to [SplashState].
extension SplashStatePatterns on SplashState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SplashLoading value)?  loading,TResult Function( SplashSuccess value)?  success,TResult Function( SplashError value)?  error,TResult Function( SplashNoSession value)?  noSession,TResult Function( SplashExpiredToken value)?  expiredToken,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SplashLoading() when loading != null:
return loading(_that);case SplashSuccess() when success != null:
return success(_that);case SplashError() when error != null:
return error(_that);case SplashNoSession() when noSession != null:
return noSession(_that);case SplashExpiredToken() when expiredToken != null:
return expiredToken(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SplashLoading value)  loading,required TResult Function( SplashSuccess value)  success,required TResult Function( SplashError value)  error,required TResult Function( SplashNoSession value)  noSession,required TResult Function( SplashExpiredToken value)  expiredToken,}){
final _that = this;
switch (_that) {
case SplashLoading():
return loading(_that);case SplashSuccess():
return success(_that);case SplashError():
return error(_that);case SplashNoSession():
return noSession(_that);case SplashExpiredToken():
return expiredToken(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SplashLoading value)?  loading,TResult? Function( SplashSuccess value)?  success,TResult? Function( SplashError value)?  error,TResult? Function( SplashNoSession value)?  noSession,TResult? Function( SplashExpiredToken value)?  expiredToken,}){
final _that = this;
switch (_that) {
case SplashLoading() when loading != null:
return loading(_that);case SplashSuccess() when success != null:
return success(_that);case SplashError() when error != null:
return error(_that);case SplashNoSession() when noSession != null:
return noSession(_that);case SplashExpiredToken() when expiredToken != null:
return expiredToken(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  success,TResult Function( String message)?  error,TResult Function()?  noSession,TResult Function()?  expiredToken,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SplashLoading() when loading != null:
return loading();case SplashSuccess() when success != null:
return success();case SplashError() when error != null:
return error(_that.message);case SplashNoSession() when noSession != null:
return noSession();case SplashExpiredToken() when expiredToken != null:
return expiredToken();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  success,required TResult Function( String message)  error,required TResult Function()  noSession,required TResult Function()  expiredToken,}) {final _that = this;
switch (_that) {
case SplashLoading():
return loading();case SplashSuccess():
return success();case SplashError():
return error(_that.message);case SplashNoSession():
return noSession();case SplashExpiredToken():
return expiredToken();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String message)?  error,TResult? Function()?  noSession,TResult? Function()?  expiredToken,}) {final _that = this;
switch (_that) {
case SplashLoading() when loading != null:
return loading();case SplashSuccess() when success != null:
return success();case SplashError() when error != null:
return error(_that.message);case SplashNoSession() when noSession != null:
return noSession();case SplashExpiredToken() when expiredToken != null:
return expiredToken();case _:
  return null;

}
}

}

/// @nodoc


class SplashLoading implements SplashState {
  const SplashLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.loading()';
}


}




/// @nodoc


class SplashSuccess implements SplashState {
  const SplashSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.success()';
}


}




/// @nodoc


class SplashError implements SplashState {
  const SplashError(this.message);
  

 final  String message;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashErrorCopyWith<SplashError> get copyWith => _$SplashErrorCopyWithImpl<SplashError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SplashState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $SplashErrorCopyWith<$Res> implements $SplashStateCopyWith<$Res> {
  factory $SplashErrorCopyWith(SplashError value, $Res Function(SplashError) _then) = _$SplashErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SplashErrorCopyWithImpl<$Res>
    implements $SplashErrorCopyWith<$Res> {
  _$SplashErrorCopyWithImpl(this._self, this._then);

  final SplashError _self;
  final $Res Function(SplashError) _then;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SplashError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SplashNoSession implements SplashState {
  const SplashNoSession();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashNoSession);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.noSession()';
}


}




/// @nodoc


class SplashExpiredToken implements SplashState {
  const SplashExpiredToken();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashExpiredToken);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.expiredToken()';
}


}




// dart format on
