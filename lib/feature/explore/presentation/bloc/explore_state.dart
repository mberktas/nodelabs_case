part of 'explore_bloc.dart';

@freezed
sealed class ExploreState with _$ExploreState {
  const factory ExploreState.loading() = ExploreLoading;
  const factory ExploreState.loaded({
    required List<Movie> movies,
    required Pagination pagination,
  }) = ExploreLoaded;
  const factory ExploreState.error({required String message}) = ExploreError;
}
