// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AccountEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountEvent()';
}


}

/// @nodoc
class $AccountEventCopyWith<$Res>  {
$AccountEventCopyWith(AccountEvent _, $Res Function(AccountEvent) __);
}


/// Adds pattern-matching-related methods to [AccountEvent].
extension AccountEventPatterns on AccountEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _AddPhotoRequested value)?  addPhotoRequested,TResult Function( _LogoutPressed value)?  logoutPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _AddPhotoRequested() when addPhotoRequested != null:
return addPhotoRequested(_that);case _LogoutPressed() when logoutPressed != null:
return logoutPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _AddPhotoRequested value)  addPhotoRequested,required TResult Function( _LogoutPressed value)  logoutPressed,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _AddPhotoRequested():
return addPhotoRequested(_that);case _LogoutPressed():
return logoutPressed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _AddPhotoRequested value)?  addPhotoRequested,TResult? Function( _LogoutPressed value)?  logoutPressed,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _AddPhotoRequested() when addPhotoRequested != null:
return addPhotoRequested(_that);case _LogoutPressed() when logoutPressed != null:
return logoutPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( XFile image)?  addPhotoRequested,TResult Function()?  logoutPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _AddPhotoRequested() when addPhotoRequested != null:
return addPhotoRequested(_that.image);case _LogoutPressed() when logoutPressed != null:
return logoutPressed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( XFile image)  addPhotoRequested,required TResult Function()  logoutPressed,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _AddPhotoRequested():
return addPhotoRequested(_that.image);case _LogoutPressed():
return logoutPressed();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( XFile image)?  addPhotoRequested,TResult? Function()?  logoutPressed,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _AddPhotoRequested() when addPhotoRequested != null:
return addPhotoRequested(_that.image);case _LogoutPressed() when logoutPressed != null:
return logoutPressed();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AccountEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountEvent.started()';
}


}




/// @nodoc


class _AddPhotoRequested implements AccountEvent {
  const _AddPhotoRequested({required this.image});
  

 final  XFile image;

/// Create a copy of AccountEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddPhotoRequestedCopyWith<_AddPhotoRequested> get copyWith => __$AddPhotoRequestedCopyWithImpl<_AddPhotoRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddPhotoRequested&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'AccountEvent.addPhotoRequested(image: $image)';
}


}

/// @nodoc
abstract mixin class _$AddPhotoRequestedCopyWith<$Res> implements $AccountEventCopyWith<$Res> {
  factory _$AddPhotoRequestedCopyWith(_AddPhotoRequested value, $Res Function(_AddPhotoRequested) _then) = __$AddPhotoRequestedCopyWithImpl;
@useResult
$Res call({
 XFile image
});




}
/// @nodoc
class __$AddPhotoRequestedCopyWithImpl<$Res>
    implements _$AddPhotoRequestedCopyWith<$Res> {
  __$AddPhotoRequestedCopyWithImpl(this._self, this._then);

  final _AddPhotoRequested _self;
  final $Res Function(_AddPhotoRequested) _then;

/// Create a copy of AccountEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(_AddPhotoRequested(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile,
  ));
}


}

/// @nodoc


class _LogoutPressed implements AccountEvent {
  const _LogoutPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountEvent.logoutPressed()';
}


}




/// @nodoc
mixin _$AccountState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountState()';
}


}

/// @nodoc
class $AccountStateCopyWith<$Res>  {
$AccountStateCopyWith(AccountState _, $Res Function(AccountState) __);
}


/// Adds pattern-matching-related methods to [AccountState].
extension AccountStatePatterns on AccountState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AccountLoading value)?  loading,TResult Function( AccountLoaded value)?  loaded,TResult Function( AccountError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AccountLoading() when loading != null:
return loading(_that);case AccountLoaded() when loaded != null:
return loaded(_that);case AccountError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AccountLoading value)  loading,required TResult Function( AccountLoaded value)  loaded,required TResult Function( AccountError value)  error,}){
final _that = this;
switch (_that) {
case AccountLoading():
return loading(_that);case AccountLoaded():
return loaded(_that);case AccountError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AccountLoading value)?  loading,TResult? Function( AccountLoaded value)?  loaded,TResult? Function( AccountError value)?  error,}){
final _that = this;
switch (_that) {
case AccountLoading() when loading != null:
return loading(_that);case AccountLoaded() when loaded != null:
return loaded(_that);case AccountError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( Account? account,  List<Movie>? favorites)?  loaded,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AccountLoading() when loading != null:
return loading();case AccountLoaded() when loaded != null:
return loaded(_that.account,_that.favorites);case AccountError() when error != null:
return error();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( Account? account,  List<Movie>? favorites)  loaded,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case AccountLoading():
return loading();case AccountLoaded():
return loaded(_that.account,_that.favorites);case AccountError():
return error();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( Account? account,  List<Movie>? favorites)?  loaded,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case AccountLoading() when loading != null:
return loading();case AccountLoaded() when loaded != null:
return loaded(_that.account,_that.favorites);case AccountError() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class AccountLoading implements AccountState {
  const AccountLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountState.loading()';
}


}




/// @nodoc


class AccountLoaded implements AccountState {
  const AccountLoaded({this.account, final  List<Movie>? favorites}): _favorites = favorites;
  

 final  Account? account;
 final  List<Movie>? _favorites;
 List<Movie>? get favorites {
  final value = _favorites;
  if (value == null) return null;
  if (_favorites is EqualUnmodifiableListView) return _favorites;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountLoadedCopyWith<AccountLoaded> get copyWith => _$AccountLoadedCopyWithImpl<AccountLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountLoaded&&(identical(other.account, account) || other.account == account)&&const DeepCollectionEquality().equals(other._favorites, _favorites));
}


@override
int get hashCode => Object.hash(runtimeType,account,const DeepCollectionEquality().hash(_favorites));

@override
String toString() {
  return 'AccountState.loaded(account: $account, favorites: $favorites)';
}


}

/// @nodoc
abstract mixin class $AccountLoadedCopyWith<$Res> implements $AccountStateCopyWith<$Res> {
  factory $AccountLoadedCopyWith(AccountLoaded value, $Res Function(AccountLoaded) _then) = _$AccountLoadedCopyWithImpl;
@useResult
$Res call({
 Account? account, List<Movie>? favorites
});


$AccountCopyWith<$Res>? get account;

}
/// @nodoc
class _$AccountLoadedCopyWithImpl<$Res>
    implements $AccountLoadedCopyWith<$Res> {
  _$AccountLoadedCopyWithImpl(this._self, this._then);

  final AccountLoaded _self;
  final $Res Function(AccountLoaded) _then;

/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? account = freezed,Object? favorites = freezed,}) {
  return _then(AccountLoaded(
account: freezed == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as Account?,favorites: freezed == favorites ? _self._favorites : favorites // ignore: cast_nullable_to_non_nullable
as List<Movie>?,
  ));
}

/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountCopyWith<$Res>? get account {
    if (_self.account == null) {
    return null;
  }

  return $AccountCopyWith<$Res>(_self.account!, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}

/// @nodoc


class AccountError implements AccountState {
  const AccountError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountState.error()';
}


}




// dart format on
