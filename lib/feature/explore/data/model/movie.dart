import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@Freezed()
sealed class Movie with _$Movie {
  factory Movie({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'id') String? movieId,
    @JsonKey(name: 'Title') String? title,
    @JsonKey(name: 'Year') String? year,
    @JsonKey(name: 'Rated') String? rated,
    @JsonKey(name: 'Released') String? released,
    @JsonKey(name: 'Runtime') String? runtime,
    @JsonKey(name: 'Genre') String? genre,
    @JsonKey(name: 'Director') String? director,
    @JsonKey(name: 'Writer') String? writer,
    @JsonKey(name: 'Actors') String? actors,
    @JsonKey(name: 'Plot') String? plot,
    @JsonKey(name: 'Language') String? language,
    @JsonKey(name: 'Country') String? country,
    @JsonKey(name: 'Awards') String? awards,
    @JsonKey(name: 'Poster', fromJson: secureUrl) String? poster,
    @JsonKey(name: 'Metascore') String? metascore,
    @JsonKey(name: 'imdbRating') String? imdbRating,
    @JsonKey(name: 'imdbVotes') String? imdbVotes,
    @JsonKey(name: 'imdbID') String? imdbId,
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'Response') String? response,
    @JsonKey(name: 'Images') List<String>? images,
    @JsonKey(name: 'ComingSoon') bool? comingSoon,
    @JsonKey(name: 'isFavorite') bool? isFavorite,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

String secureUrl(String? poster) {
  if (poster == null || poster.isEmpty) {
    return '';
  }
  return poster.replaceFirst('http://', 'https://');
}
