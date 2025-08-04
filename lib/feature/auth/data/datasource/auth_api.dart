import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nodelabs_case/core/networking/base_response.dart';
import 'package:nodelabs_case/feature/auth/data/model/login_response.dart';
import 'package:nodelabs_case/feature/auth/data/model/register_response.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

@injectable
@RestApi()
abstract class AuthApi {
  @factoryMethod
  factory AuthApi(Dio dio, {@factoryParam String? baseUrl}) = _AuthApi;

  @POST('/user/login')
  Future<BaseResponse<LoginResponse>> login({
    @Field('email') required String email,
    @Field('password') required String password,
  });

  @POST('/user/register')
  Future<BaseResponse<RegisterResponse>> register({
    @Field('email') required String email,
    @Field('password') required String password,
    @Field('name') required String name,
  });
}
