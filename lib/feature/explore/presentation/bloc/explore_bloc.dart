import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nodelabs_case/feature/explore/data/model/movie.dart';
import 'package:nodelabs_case/feature/explore/data/model/movie_list_response.dart';
import 'package:nodelabs_case/feature/explore/domain/repository/explore_repository.dart';

part 'explore_bloc.freezed.dart';
part 'explore_event.dart';
part 'explore_state.dart';

@injectable
class ExploreBloc extends Bloc<ExploreEvent, ExploreState> {
  ExploreBloc(this._exploreRepository) : super(ExploreLoading()) {
    on<ExploreEvent>(
      (event, emit) => switch (event) {
        _FetchMoviesRequested() => _onFetchMoviesRequested(event, emit),
        _FetchMoreMoviesRequested() => _onFetchMoreMoviesRequested(event, emit),
        _ToggleFavoriteStatusRequested() => _onToggleFavoriteStatusRequested(
          event,
          emit,
        ),
      },
    );
  }

  final ExploreRepository _exploreRepository;

  Future<void> _onFetchMoviesRequested(
    _FetchMoviesRequested event,
    Emitter<ExploreState> emit,
  ) async {
    emit(ExploreLoading());

    final result = await _exploreRepository.fetchMovies(page: event.page);

    result.fold(
      (l) =>
          emit(ExploreError(message: 'Failed to fetch movies: ${l.message}')),
      (r) => emit(ExploreLoaded(pagination: r.pagination, movies: r.movies)),
    );
  }

  Future<void> _onFetchMoreMoviesRequested(
    _FetchMoreMoviesRequested event,
    Emitter<ExploreState> emit,
  ) async {
    if (state is! ExploreLoaded) {
      return;
    }

    final currentState = state as ExploreLoaded;

    if (currentState.pagination.currentPage >=
        currentState.pagination.maxPage) {
      return; // No more pages to fetch
    }

    final result = await _exploreRepository.fetchMovies(
      page: currentState.pagination.currentPage + 1,
    );

    result.fold(
      (l) =>
          emit(ExploreError(message: 'Failed to fetch movies: ${l.message}')),
      (r) => emit(
        ExploreLoaded(
          pagination: r.pagination,
          movies: [...currentState.movies, ...r.movies],
        ),
      ),
    );
  }

  Future<void> _onToggleFavoriteStatusRequested(
    _ToggleFavoriteStatusRequested event,
    Emitter<ExploreState> emit,
  ) async {
    _exploreRepository.toggleFavoriteStatus(movieId: event.movieId);

    final currentState = state as ExploreLoaded;

    final movies = currentState.movies.toList();
    final newMovies = toggleFavorite(movies, event.movieId);

    emit(currentState.copyWith(movies: newMovies));
  }

  List<Movie> toggleFavorite(List<Movie> movies, String targetId) {
    return movies.map((movie) {
      if (movie.id == targetId) {
        return movie.copyWith(isFavorite: !movie.isFavorite!);
      }
      return movie;
    }).toList();
  }
}
