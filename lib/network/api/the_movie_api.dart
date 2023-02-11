import 'package:dio/dio.dart';
import 'package:movie_project/Constant/api_constant.dart';
import 'package:movie_project/network/api/response/movie_response/movie_response.dart';
import 'package:retrofit/http.dart';

part 'the_movie_api.g.dart';
@RestApi(baseUrl:kBaseURL)
abstract class TheMovieAPI{
  factory TheMovieAPI(Dio dio)=>_TheMovieAPI(dio);

  @GET(kGetNowPlayingEndPoint)
  Future<MovieResponse> getResponse(
      @Query(kApiKey) String apiKey,
      @Query(kPages) int page
      );
}
