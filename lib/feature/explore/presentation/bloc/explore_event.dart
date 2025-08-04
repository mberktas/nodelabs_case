part of 'explore_bloc.dart';

@freezed
sealed class ExploreEvent with _$ExploreEvent {
  const factory ExploreEvent.fetchMoviesRequested({required int page}) =
      _FetchMoviesRequested;

  const factory ExploreEvent.fetchMoreMoviesRequested({required int page}) =
      _FetchMoreMoviesRequested;

  const factory ExploreEvent.toggleFavoriteStatusRequested({
    required String movieId,
  }) = _ToggleFavoriteStatusRequested;
}
