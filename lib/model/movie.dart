class Movie {
  final String title;
  final String image;

  Movie({
    required this.title,
    required this.image,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['original_title'],
      image: json['poster_path'],
    );
  }
}
