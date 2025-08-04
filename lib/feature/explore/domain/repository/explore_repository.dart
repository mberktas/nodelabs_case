import 'package:dartz/dartz.dart';
import 'package:nodelabs_case/core/error/failure.dart';
import 'package:nodelabs_case/feature/explore/data/model/movie.dart';
import 'package:nodelabs_case/feature/explore/data/model/movie_list_response.dart';

abstract class ExploreRepository {
  Future<Either<Failure, MovieListResponse>> fetchMovies({required int page});
  Future<Either<Failure, Movie>> toggleFavoriteStatus({
    required String movieId,
  });
}
