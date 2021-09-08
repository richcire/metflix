class Movie {
  final String title;

  Movie({
    required this.title
  });

  factory Movie.fromJson(Map<String, dynamic> json){
    return Movie(
        title: json['original_title']
    );
  }
}