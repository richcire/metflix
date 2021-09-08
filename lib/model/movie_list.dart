import 'package:yeonflix/model/movie.dart';

class MovieList {
  final List<Movie> items;

  MovieList({required this.items});

  factory MovieList.fromJson(Map<String, dynamic> json){
    return MovieList(
        items: List<Movie>.from(
            json['results'].map((data)=>Movie.fromJson(data))
        )
    );
  }
}