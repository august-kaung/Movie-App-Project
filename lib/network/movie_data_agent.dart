

import 'package:movie_project/data/vos/movie_vo/movie_vo.dart';

abstract class MovieDataAgent{
  Future<List<MovieVO>?> getRawResults(int page);
}