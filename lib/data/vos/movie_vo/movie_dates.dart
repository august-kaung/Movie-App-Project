

import 'package:json_annotation/json_annotation.dart';
part 'movie_dates.g.dart';
@JsonSerializable()
class MovieDate{
  @JsonKey(name: 'maximum')
  String ? maximum;
  @JsonKey(name: 'minimum')
  String ? minimum;

  MovieDate(this.maximum, this.minimum);
  factory MovieDate.fromJson(Map<String,dynamic>json)=>_$MovieDateFromJson(json);
  Map<String,dynamic>toJson()=>_$MovieDateToJson(this);

}



// "dates": {
// "maximum": "2023-02-05",
// "minimum": "2022-12-19"