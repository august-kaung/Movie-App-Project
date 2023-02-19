import 'package:flutter/material.dart';
import 'package:movie_project/data/apply/movie_apply.dart';
import 'package:movie_project/data/apply/movie_apply_impl.dart';
import 'package:movie_project/data/vos/movie_vo/movie_vo.dart';
import 'package:movie_project/Constant/api_constant.dart';
import 'package:movie_project/Constant/strings.dart';
import 'package:movie_project/Constant/dimes.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MovieApply movieApply = MovieApplyImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(kAppTitle, style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: kHeight300x,
              child: FutureBuilder<List<MovieVO>?>(
                  future: movieApply.getInstantResult(1),
                  builder: (context, snapShot) {
                    if (snapShot.connectionState == ConnectionState.waiting) {
                      return  const Center(child: CircularProgressIndicator(),);
                    }
                    if (snapShot.hasError) {
                      return  const Center(child: Text('Error Occur'),);
                    }
                    //var ta khu build lite tl
                    final movieBanner = snapShot.data?.take(5).toList()??[];
                    return PageView.builder(
                        itemCount: movieBanner .length,
                        itemBuilder: (context, index) =>
                            BannerMovieItemView(
                                movieVO: movieBanner[index])
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BannerMovieItemView extends StatelessWidget {
  const BannerMovieItemView({Key? key, required this.movieVO})
      : super(key: key);
  final MovieVO  movieVO;

  @override
  Widget build(BuildContext context) {
    var image = movieVO.backDrop;
    return Image.network('$kPrefixImageLink$image');
  }
}