import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:yeonflix/model/movie_list.dart';

class HttpController extends GetxController {
  Rx<MovieList> movieList = MovieList(items: []).obs;

  @override
  void onInit() {
    loadVideo();
    super.onInit();
  }

  void loadVideo() async{
    MovieList movieListResult = await fetchMovie();
    movieList.update((model) {
      model!.items.addAll(movieListResult.items);
    });
  }

  Future<MovieList> fetchMovie() async {
    final response = await http
        .get(Uri.parse('https://api.themoviedb.org/3/movie/now_playing?api_key=ecb7d7398b5fb7dd02e34acb6e0d7ec0'));

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

}

