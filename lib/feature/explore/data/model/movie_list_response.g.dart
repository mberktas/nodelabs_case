// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieListResponse _$MovieListResponseFromJson(Map<String, dynamic> json) =>
    _MovieListResponse(
      movies: (json['movies'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: Pagination.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$MovieListResponseToJson(_MovieListResponse instance) =>
    <String, dynamic>{
      'movies': instance.movies,
      'pagination': instance.pagination,
    };

_Pagination _$PaginationFromJson(Map<String, dynamic> json) => _Pagination(
  totalCount: (json['totalCount'] as num).toInt(),
  perPage: (json['perPage'] as num).toInt(),
  maxPage: (json['maxPage'] as num).toInt(),
  currentPage: (json['currentPage'] as num).toInt(),
);

Map<String, dynamic> _$PaginationToJson(_Pagination instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'perPage': instance.perPage,
      'maxPage': instance.maxPage,
      'currentPage': instance.currentPage,
    };
