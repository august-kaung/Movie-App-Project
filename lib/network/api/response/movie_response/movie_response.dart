import 'package:json_annotation/json_annotation.dart';
import 'package:movie_project/data/vos/movie_vo/movie_dates.dart';
import 'package:movie_project/data/vos/movie_vo/movie_vo.dart';

part 'movie_response.g.dart';

@JsonSerializable()
class MovieResponse{
  @JsonKey(name: 'dates')
  MovieDate ? dates;
  @JsonKey(name: 'page')
  int ? page;
  @JsonKey(name: 'results')
  List<MovieVO> ? results;
  @JsonKey(name: 'total_pages')
  int ? totalPages;
  @JsonKey(name: 'total_results')
  int ? totalResults;

  MovieResponse(
      this.dates, this.page, this.results, this.totalPages, this.totalResults);
  factory MovieResponse.fromJson(Map<String,dynamic>json)=>_$MovieResponseFromJson(json);
  Map<String,dynamic>toJson()=>_$MovieResponseToJson(this);

}


