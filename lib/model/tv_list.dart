import 'package:yeonflix/model/movie.dart';
import 'package:yeonflix/model/tv.dart';

class TvList {
  final List<Tv> items;

  TvList({required this.items});

  factory TvList.fromJson(Map<String, dynamic> json){
    return TvList(
        items: List<Tv>.from(
            json['results'].map((data)=>Tv.fromJson(data))
        )
    );
  }
}