import 'package:dio/dio.dart';

import 'package:movie_project/Constant/api_constant.dart';
import 'package:movie_project/data/vos/movie_vo/movie_vo.dart';
import 'package:movie_project/network/api/the_movie_api.dart';
import 'package:movie_project/network/movie_data_agent.dart';

class MovieDataAgentImpl extends MovieDataAgent {
  late TheMovieAPI _api;

  MovieDataAgentImpl._(){
    _api = TheMovieAPI(Dio());
  }

  static final MovieDataAgentImpl _singleton = MovieDataAgentImpl._();

  factory MovieDataAgentImpl()=> _singleton;

  @override
  Future<List<MovieVO>?>getRawResults(int page) => _api
          .getResponse(kApiKey, page)
          .asStream()
          .map((event) => event.results)
          .first;
}