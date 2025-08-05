import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nodelabs_case/core/networking/base_response.dart';
import 'package:nodelabs_case/feature/account/data/model/account.dart';
import 'package:nodelabs_case/feature/explore/data/model/movie.dart';
import 'package:retrofit/retrofit.dart';

part 'account_api.g.dart';

@injectable
@RestApi()
abstract class AccountApi {
  @factoryMethod
  factory AccountApi(Dio dio, {@factoryParam String? baseUrl}) = _AccountApi;

  @GET('/user/profile')
  Future<BaseResponse<Account>> fetchProfileDetails();

  @GET('/movie/favorites')
  Future<BaseResponse<List<Movie>>> fetchFavoriteMovies();

  @POST('/user/upload_photo')
  @MultiPart()
  Future<BaseResponse<bool>> updateProfilePhoto(@Part(name: 'file') File photo);
}
