import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:nodelabs_case/core/error/failure.dart';
import 'package:nodelabs_case/feature/account/data/datasource/account_api.dart';
import 'package:nodelabs_case/feature/account/data/model/account.dart';
import 'package:nodelabs_case/feature/account/domain/repository/account_repository.dart';
import 'package:nodelabs_case/feature/explore/data/model/movie.dart';

@Injectable(as: AccountRepository)
class AccountRepositoryImpl implements AccountRepository {
  const AccountRepositoryImpl(this._accountApi);
  final AccountApi _accountApi;
  @override
  Future<Either<Failure, Account>> fetchProfileDetails() async {
    try {
      final response = await _accountApi.fetchProfileDetails();

      if (response.data == null) {
        return Left(ServerFailure(message: 'Failed to fetch profile details.'));
      }

      return Right(response.data!);
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to fetch profile details'));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> fetchFavoriteMovies() async {
    try {
      final response = await _accountApi.fetchFavoriteMovies();

      if (response.data == null) {
        return Left(ServerFailure(message: 'Failed to fetch favorite movies.'));
      }

      return Right(response.data!);
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to fetch favorite movies'));
    }
  }

  @override
  Future<Either<Failure, bool>> addProfilePhoto(XFile image) async {
    try {
      final response = await _accountApi.updateProfilePhoto(File(image.path));
      if (response.data == null) {
        return Left(ServerFailure(message: 'Failed to update profile photo.'));
      }

      return Right(true);
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to update profile photo'));
    }
  }
}
