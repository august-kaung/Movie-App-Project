

import 'package:movie_project/data/vos/movie_vo/movie_vo.dart';

abstract class  MovieApply{
  Future<List<MovieVO>?> getInstantResult(int page);
}