import 'package:movie_project/data/apply/movie_apply.dart';
import 'package:movie_project/data/vos/movie_vo/movie_vo.dart';
import 'package:movie_project/network/movie_data_agent.dart';
import 'package:movie_project/network/movie_data_agent_impl.dart';

class MovieApplyImpl extends MovieApply{

  MovieApplyImpl._();
  static final MovieApplyImpl _singleton=MovieApplyImpl._();
  factory MovieApplyImpl()=>_singleton;

  final MovieDataAgent _movieDataAgent=MovieDataAgentImpl();

  @override
  Future<List<MovieVO>?> getInstantResult(int page)=>
      _movieDataAgent.getRawResults(page).then((value) {
    final temp=value?.map((e) {
      e.isGetNowPlaying=true;
      return e;
    }).toList();
    return temp;
  });

}

