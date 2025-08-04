import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nodelabs_case/core/networking/base_response.dart';
import 'package:nodelabs_case/feature/explore/data/model/movie.dart';
import 'package:nodelabs_case/feature/explore/data/model/movie_list_response.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_api.g.dart';

@injectable
@RestApi()
abstract class MovieApi {
  @factoryMethod
  factory MovieApi(Dio dio, {@factoryParam String? baseUrl}) = _MovieApi;

  @GET('/movie/list')
  Future<BaseResponse<MovieListResponse>> fetchMovies(@Query('page') int page);

  @POST('/movie/favorite/{favoriteId}')
  Future<BaseResponse<Movie>> toggleFavoriteStatus(
    @Path('favoriteId') String movieId,
  );
}
