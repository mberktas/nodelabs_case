import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nodelabs_case/core/error/failure.dart';
import 'package:nodelabs_case/feature/account/data/model/account.dart';
import 'package:nodelabs_case/feature/explore/data/model/movie.dart';

abstract class AccountRepository {
  Future<Either<Failure, Account>> fetchProfileDetails();
  Future<Either<Failure, List<Movie>>> fetchFavoriteMovies();
  Future<Either<Failure, bool>> addProfilePhoto(XFile image);
}
