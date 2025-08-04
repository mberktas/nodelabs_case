import 'package:dartz/dartz.dart';
import 'package:nodelabs_case/core/error/failure.dart';
import 'package:nodelabs_case/feature/auth/data/model/login_response.dart';
import 'package:nodelabs_case/feature/auth/data/model/register_response.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginResponse>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, RegisterResponse>> register({
    required String email,
    required String password,
    required String name,
  });
}
