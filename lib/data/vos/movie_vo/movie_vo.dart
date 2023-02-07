import 'package:json_annotation/json_annotation.dart';

part 'movie_vo.g.dart';

@JsonSerializable()
class MovieVO{
  @JsonKey(name: 'adult')
  bool ? adult;
  @JsonKey(name: 'backdrop_path')
  String ? backdropPath;
  @JsonKey(name: 'genre_ids')
  List <int> ? genreIds;
  @JsonKey(name: 'id')
  int ? id;
  @JsonKey(name: 'original_language')
  String ? originalLanguage;
  @JsonKey(name: 'original_title')
  String ? originalTitle;
  @JsonKey(name: 'overview')
  String ? overview;
  @JsonKey(name: 'popularity')
  num ? popularity;
  @JsonKey(name: 'poster_path')
  String ? posterPath;
  @JsonKey(name: 'release_date')
  String ? releaseDate;
  @JsonKey(name: 'title')
  String ? title;
  @JsonKey(name: 'video')
  bool ? video;
  @JsonKey(name: 'vote_average')
  num ? voteAverage;
  @JsonKey(name: 'vote_count')
  int ? voteCount;

  MovieVO(
      this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount);

      factory MovieVO.fromJson(Map<String,dynamic>json) => _$MovieVOFromJson(json);
      Map<String,dynamic>toJson() => _$MovieVOToJson(this);
}
// {
// "adult": false,
// "backdrop_path": "/faXT8V80JRhnArTAeYXz0Eutpv9.jpg",
// "genre_ids": [
// 16,
// 12,
// 35,
// 10751,
// 14
// ],
// "id": 315162,
// "original_language": "en",
// "original_title": "Puss in Boots: The Last Wish",
// "overview": "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
// "popularity": 5840.194,
// "poster_path": "/kuf6dutpsT0vSVehic3EZIqkOBt.jpg",
// "release_date": "2022-12-07",
// "title": "Puss in Boots: The Last Wish",
// "video": false,
// "vote_average": 8.6,
// "vote_count": 3278
// }