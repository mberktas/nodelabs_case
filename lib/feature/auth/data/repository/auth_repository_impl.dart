import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nodelabs_case/core/error/failure.dart';
import 'package:nodelabs_case/feature/auth/data/datasource/auth_api.dart';
import 'package:nodelabs_case/feature/auth/data/model/login_response.dart';
import 'package:nodelabs_case/feature/auth/data/model/register_response.dart';
import 'package:nodelabs_case/feature/auth/domain/repository/auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._authApi);

  final AuthApi _authApi;

  @override
  Future<Either<Failure, LoginResponse>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _authApi.login(email: email, password: password);
      if (response.data == null) {
        return Left(ServerFailure(message: 'Login failed'));
      }

      return Right(response.data!);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, RegisterResponse>> register({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final response = await _authApi.register(
        email: email,
        password: password,
        name: name,
      );

      return Right(response.data!);
    } on DioException catch (e) {
      final String message =
          e.response?.data['response']['message'] as String? ?? 'Unknown error';

      return switch (message) {
        'USER_EXISTS' => Left(
          UserExistsFailure(message: 'User already exists'),
        ),
        'EMAIL_ALREADY_IN_USE' => Left(
          UserExistsFailure(message: 'Email already in use'),
        ),
        _ => Left(ServerFailure(message: 'Registration failed')),
      };
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
