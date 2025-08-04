import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nodelabs_case/core/error/failure.dart';
import 'package:nodelabs_case/feature/explore/data/datasource/movie_api.dart';
import 'package:nodelabs_case/feature/explore/data/model/movie.dart';
import 'package:nodelabs_case/feature/explore/data/model/movie_list_response.dart';
import 'package:nodelabs_case/feature/explore/domain/repository/explore_repository.dart';

@Injectable(as: ExploreRepository)
class ExploreRepositoryImpl implements ExploreRepository {
  ExploreRepositoryImpl(this._movieApi);

  final MovieApi _movieApi;

  @override
  Future<Either<Failure, MovieListResponse>> fetchMovies({
    required int page,
  }) async {
    try {
      final response = await _movieApi.fetchMovies(page);

      if (response.data == null) {
        return Left(ServerFailure(message: 'Failed to fetch movies'));
      }

      return Right(response.data!);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Movie>> toggleFavoriteStatus({
    required String movieId,
  }) async {
    try {
      final response = await _movieApi.toggleFavoriteStatus(movieId);

      if (response.data == null) {
        return Left(ServerFailure(message: 'Failed to toggle favorite'));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
