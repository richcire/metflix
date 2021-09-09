import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:yeonflix/model/movie_list.dart';
import 'package:yeonflix/model/tv_list.dart';

enum Category { NOWPLAYING, TOPRATED, UPCOMING, ONTHEAIR, POPULAR }

class HttpController extends GetxController {
  Rx<MovieList> nowPlayingMovieList = MovieList(items: []).obs;
  Rx<MovieList> topRatedMovieList = MovieList(items: []).obs;
  Rx<MovieList> upcomingMovieList = MovieList(items: []).obs;
  Rx<TvList> onTheAirTvList = TvList(items: []).obs;
  Rx<TvList> popularTvList = TvList(items: []).obs;
  String baseUrl = 'https://api.themoviedb.org/3';

  @override
  void onInit() {
    loadVideo();
    super.onInit();
  }

  void loadVideo() async {
    MovieList nowPlayingResult = await fetchMovie('now_playing');
    MovieList topRatedResult = await fetchMovie('top_rated');
    MovieList upcomingResult = await fetchMovie('upcoming');
    TvList onTheAirResult = await fetchTv('airing_today');
    TvList popularResult = await fetchTv('popular');
    nowPlayingMovieList.update((model) {
      model!.items.addAll(nowPlayingResult.items);
    });
    topRatedMovieList.update((model) {
      model!.items.addAll(topRatedResult.items);
    });
    upcomingMovieList.update((model) {
      model!.items.addAll(upcomingResult.items);
    });
    onTheAirTvList.update((model) {
      model!.items.addAll(onTheAirResult.items);
    });
    popularTvList.update((model) {
      model!.items.addAll(popularResult.items);
    });
  }

  Future<MovieList> fetchMovie(String category) async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/$category?api_key=ecb7d7398b5fb7dd02e34acb6e0d7ec0'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return MovieList.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<TvList> fetchTv(String category) async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/tv/$category?api_key=ecb7d7398b5fb7dd02e34acb6e0d7ec0'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return TvList.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Rx<dynamic> getCategory(int index) {
    switch (index) {
      case 1:
        return nowPlayingMovieList;
      case 2:
        return topRatedMovieList;
      case 3:
        return upcomingMovieList;
      case 4:
        return onTheAirTvList;
      case 5:
        return popularTvList;
      default:
        return nowPlayingMovieList;
    }
  }
}
