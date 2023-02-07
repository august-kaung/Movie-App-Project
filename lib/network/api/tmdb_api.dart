import 'package:dio/dio.dart';
import 'package:movie_project/Constant/api_constant.dart';
import 'package:movie_project/network/api/response/movie_response/movie_response.dart';
import 'package:retrofit/http.dart';

part 'tmdb_api.g.dart';
@RestApi(baseUrl: kBaseURL)
abstract class TheMovieDBAPI{
  factory TheMovieDBAPI(Dio dio)=_TheMovieDBAPI;

  @GET(kGetNowPlayingEndPoint)
  Future<MovieResponse> getNowPlayingMovies(
      @Query(kApiKey) String apiKey,
      @Query(kPages) int page
      );
}
