import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nodelabs_case/feature/explore/data/model/movie.dart';

part 'movie_list_response.freezed.dart';
part 'movie_list_response.g.dart';

@freezed
sealed class MovieListResponse with _$MovieListResponse {
  const factory MovieListResponse({
    required List<Movie> movies,
    required Pagination pagination,
  }) = _MovieListResponse;

  factory MovieListResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieListResponseFromJson(json);
}

@freezed
sealed class Pagination with _$Pagination {
  const factory Pagination({
    required int totalCount,
    required int perPage,
    required int maxPage,
    required int currentPage,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
