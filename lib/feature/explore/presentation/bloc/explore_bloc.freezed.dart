// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExploreEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExploreEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExploreEvent()';
}


}

/// @nodoc
class $ExploreEventCopyWith<$Res>  {
$ExploreEventCopyWith(ExploreEvent _, $Res Function(ExploreEvent) __);
}


/// Adds pattern-matching-related methods to [ExploreEvent].
extension ExploreEventPatterns on ExploreEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchMoviesRequested value)?  fetchMoviesRequested,TResult Function( _FetchMoreMoviesRequested value)?  fetchMoreMoviesRequested,TResult Function( _ToggleFavoriteStatusRequested value)?  toggleFavoriteStatusRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchMoviesRequested() when fetchMoviesRequested != null:
return fetchMoviesRequested(_that);case _FetchMoreMoviesRequested() when fetchMoreMoviesRequested != null:
return fetchMoreMoviesRequested(_that);case _ToggleFavoriteStatusRequested() when toggleFavoriteStatusRequested != null:
return toggleFavoriteStatusRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchMoviesRequested value)  fetchMoviesRequested,required TResult Function( _FetchMoreMoviesRequested value)  fetchMoreMoviesRequested,required TResult Function( _ToggleFavoriteStatusRequested value)  toggleFavoriteStatusRequested,}){
final _that = this;
switch (_that) {
case _FetchMoviesRequested():
return fetchMoviesRequested(_that);case _FetchMoreMoviesRequested():
return fetchMoreMoviesRequested(_that);case _ToggleFavoriteStatusRequested():
return toggleFavoriteStatusRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchMoviesRequested value)?  fetchMoviesRequested,TResult? Function( _FetchMoreMoviesRequested value)?  fetchMoreMoviesRequested,TResult? Function( _ToggleFavoriteStatusRequested value)?  toggleFavoriteStatusRequested,}){
final _that = this;
switch (_that) {
case _FetchMoviesRequested() when fetchMoviesRequested != null:
return fetchMoviesRequested(_that);case _FetchMoreMoviesRequested() when fetchMoreMoviesRequested != null:
return fetchMoreMoviesRequested(_that);case _ToggleFavoriteStatusRequested() when toggleFavoriteStatusRequested != null:
return toggleFavoriteStatusRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page)?  fetchMoviesRequested,TResult Function( int page)?  fetchMoreMoviesRequested,TResult Function( String movieId)?  toggleFavoriteStatusRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchMoviesRequested() when fetchMoviesRequested != null:
return fetchMoviesRequested(_that.page);case _FetchMoreMoviesRequested() when fetchMoreMoviesRequested != null:
return fetchMoreMoviesRequested(_that.page);case _ToggleFavoriteStatusRequested() when toggleFavoriteStatusRequested != null:
return toggleFavoriteStatusRequested(_that.movieId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page)  fetchMoviesRequested,required TResult Function( int page)  fetchMoreMoviesRequested,required TResult Function( String movieId)  toggleFavoriteStatusRequested,}) {final _that = this;
switch (_that) {
case _FetchMoviesRequested():
return fetchMoviesRequested(_that.page);case _FetchMoreMoviesRequested():
return fetchMoreMoviesRequested(_that.page);case _ToggleFavoriteStatusRequested():
return toggleFavoriteStatusRequested(_that.movieId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page)?  fetchMoviesRequested,TResult? Function( int page)?  fetchMoreMoviesRequested,TResult? Function( String movieId)?  toggleFavoriteStatusRequested,}) {final _that = this;
switch (_that) {
case _FetchMoviesRequested() when fetchMoviesRequested != null:
return fetchMoviesRequested(_that.page);case _FetchMoreMoviesRequested() when fetchMoreMoviesRequested != null:
return fetchMoreMoviesRequested(_that.page);case _ToggleFavoriteStatusRequested() when toggleFavoriteStatusRequested != null:
return toggleFavoriteStatusRequested(_that.movieId);case _:
  return null;

}
}

}

/// @nodoc


class _FetchMoviesRequested implements ExploreEvent {
  const _FetchMoviesRequested({required this.page});
  

 final  int page;

/// Create a copy of ExploreEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchMoviesRequestedCopyWith<_FetchMoviesRequested> get copyWith => __$FetchMoviesRequestedCopyWithImpl<_FetchMoviesRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchMoviesRequested&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'ExploreEvent.fetchMoviesRequested(page: $page)';
}


}

/// @nodoc
abstract mixin class _$FetchMoviesRequestedCopyWith<$Res> implements $ExploreEventCopyWith<$Res> {
  factory _$FetchMoviesRequestedCopyWith(_FetchMoviesRequested value, $Res Function(_FetchMoviesRequested) _then) = __$FetchMoviesRequestedCopyWithImpl;
@useResult
$Res call({
 int page
});




}
/// @nodoc
class __$FetchMoviesRequestedCopyWithImpl<$Res>
    implements _$FetchMoviesRequestedCopyWith<$Res> {
  __$FetchMoviesRequestedCopyWithImpl(this._self, this._then);

  final _FetchMoviesRequested _self;
  final $Res Function(_FetchMoviesRequested) _then;

/// Create a copy of ExploreEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(_FetchMoviesRequested(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _FetchMoreMoviesRequested implements ExploreEvent {
  const _FetchMoreMoviesRequested({required this.page});
  

 final  int page;

/// Create a copy of ExploreEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchMoreMoviesRequestedCopyWith<_FetchMoreMoviesRequested> get copyWith => __$FetchMoreMoviesRequestedCopyWithImpl<_FetchMoreMoviesRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchMoreMoviesRequested&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'ExploreEvent.fetchMoreMoviesRequested(page: $page)';
}


}

/// @nodoc
abstract mixin class _$FetchMoreMoviesRequestedCopyWith<$Res> implements $ExploreEventCopyWith<$Res> {
  factory _$FetchMoreMoviesRequestedCopyWith(_FetchMoreMoviesRequested value, $Res Function(_FetchMoreMoviesRequested) _then) = __$FetchMoreMoviesRequestedCopyWithImpl;
@useResult
$Res call({
 int page
});




}
/// @nodoc
class __$FetchMoreMoviesRequestedCopyWithImpl<$Res>
    implements _$FetchMoreMoviesRequestedCopyWith<$Res> {
  __$FetchMoreMoviesRequestedCopyWithImpl(this._self, this._then);

  final _FetchMoreMoviesRequested _self;
  final $Res Function(_FetchMoreMoviesRequested) _then;

/// Create a copy of ExploreEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(_FetchMoreMoviesRequested(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ToggleFavoriteStatusRequested implements ExploreEvent {
  const _ToggleFavoriteStatusRequested({required this.movieId});
  

 final  String movieId;

/// Create a copy of ExploreEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleFavoriteStatusRequestedCopyWith<_ToggleFavoriteStatusRequested> get copyWith => __$ToggleFavoriteStatusRequestedCopyWithImpl<_ToggleFavoriteStatusRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleFavoriteStatusRequested&&(identical(other.movieId, movieId) || other.movieId == movieId));
}


@override
int get hashCode => Object.hash(runtimeType,movieId);

@override
String toString() {
  return 'ExploreEvent.toggleFavoriteStatusRequested(movieId: $movieId)';
}


}

/// @nodoc
abstract mixin class _$ToggleFavoriteStatusRequestedCopyWith<$Res> implements $ExploreEventCopyWith<$Res> {
  factory _$ToggleFavoriteStatusRequestedCopyWith(_ToggleFavoriteStatusRequested value, $Res Function(_ToggleFavoriteStatusRequested) _then) = __$ToggleFavoriteStatusRequestedCopyWithImpl;
@useResult
$Res call({
 String movieId
});




}
/// @nodoc
class __$ToggleFavoriteStatusRequestedCopyWithImpl<$Res>
    implements _$ToggleFavoriteStatusRequestedCopyWith<$Res> {
  __$ToggleFavoriteStatusRequestedCopyWithImpl(this._self, this._then);

  final _ToggleFavoriteStatusRequested _self;
  final $Res Function(_ToggleFavoriteStatusRequested) _then;

/// Create a copy of ExploreEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieId = null,}) {
  return _then(_ToggleFavoriteStatusRequested(
movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ExploreState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExploreState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExploreState()';
}


}

/// @nodoc
class $ExploreStateCopyWith<$Res>  {
$ExploreStateCopyWith(ExploreState _, $Res Function(ExploreState) __);
}


/// Adds pattern-matching-related methods to [ExploreState].
extension ExploreStatePatterns on ExploreState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ExploreLoading value)?  loading,TResult Function( ExploreLoaded value)?  loaded,TResult Function( ExploreError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ExploreLoading() when loading != null:
return loading(_that);case ExploreLoaded() when loaded != null:
return loaded(_that);case ExploreError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ExploreLoading value)  loading,required TResult Function( ExploreLoaded value)  loaded,required TResult Function( ExploreError value)  error,}){
final _that = this;
switch (_that) {
case ExploreLoading():
return loading(_that);case ExploreLoaded():
return loaded(_that);case ExploreError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ExploreLoading value)?  loading,TResult? Function( ExploreLoaded value)?  loaded,TResult? Function( ExploreError value)?  error,}){
final _that = this;
switch (_that) {
case ExploreLoading() when loading != null:
return loading(_that);case ExploreLoaded() when loaded != null:
return loaded(_that);case ExploreError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<Movie> movies,  Pagination pagination)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ExploreLoading() when loading != null:
return loading();case ExploreLoaded() when loaded != null:
return loaded(_that.movies,_that.pagination);case ExploreError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<Movie> movies,  Pagination pagination)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ExploreLoading():
return loading();case ExploreLoaded():
return loaded(_that.movies,_that.pagination);case ExploreError():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<Movie> movies,  Pagination pagination)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ExploreLoading() when loading != null:
return loading();case ExploreLoaded() when loaded != null:
return loaded(_that.movies,_that.pagination);case ExploreError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ExploreLoading implements ExploreState {
  const ExploreLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExploreLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExploreState.loading()';
}


}




/// @nodoc


class ExploreLoaded implements ExploreState {
  const ExploreLoaded({required final  List<Movie> movies, required this.pagination}): _movies = movies;
  

 final  List<Movie> _movies;
 List<Movie> get movies {
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movies);
}

 final  Pagination pagination;

/// Create a copy of ExploreState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExploreLoadedCopyWith<ExploreLoaded> get copyWith => _$ExploreLoadedCopyWithImpl<ExploreLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExploreLoaded&&const DeepCollectionEquality().equals(other._movies, _movies)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_movies),pagination);

@override
String toString() {
  return 'ExploreState.loaded(movies: $movies, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $ExploreLoadedCopyWith<$Res> implements $ExploreStateCopyWith<$Res> {
  factory $ExploreLoadedCopyWith(ExploreLoaded value, $Res Function(ExploreLoaded) _then) = _$ExploreLoadedCopyWithImpl;
@useResult
$Res call({
 List<Movie> movies, Pagination pagination
});


$PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class _$ExploreLoadedCopyWithImpl<$Res>
    implements $ExploreLoadedCopyWith<$Res> {
  _$ExploreLoadedCopyWithImpl(this._self, this._then);

  final ExploreLoaded _self;
  final $Res Function(ExploreLoaded) _then;

/// Create a copy of ExploreState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movies = null,Object? pagination = null,}) {
  return _then(ExploreLoaded(
movies: null == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}

/// Create a copy of ExploreState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

/// @nodoc


class ExploreError implements ExploreState {
  const ExploreError({required this.message});
  

 final  String message;

/// Create a copy of ExploreState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExploreErrorCopyWith<ExploreError> get copyWith => _$ExploreErrorCopyWithImpl<ExploreError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExploreError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ExploreState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ExploreErrorCopyWith<$Res> implements $ExploreStateCopyWith<$Res> {
  factory $ExploreErrorCopyWith(ExploreError value, $Res Function(ExploreError) _then) = _$ExploreErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ExploreErrorCopyWithImpl<$Res>
    implements $ExploreErrorCopyWith<$Res> {
  _$ExploreErrorCopyWithImpl(this._self, this._then);

  final ExploreError _self;
  final $Res Function(ExploreError) _then;

/// Create a copy of ExploreState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ExploreError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
