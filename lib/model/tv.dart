class Tv {
  final String title;
  final String image;

  Tv({
    required this.title,
    required this.image,
  });

  factory Tv.fromJson(Map<String, dynamic> json) {
    return Tv(
      title: json['original_name'],
      image: json['poster_path'],
    );
  }
}
