import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  CategoryText({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(fontSize: 19),
    );
  }
}

List<CategoryText> categoryTextList = [
  CategoryText(label: 'Now Playing'),
  CategoryText(label: 'Top Rated'),
  CategoryText(label: 'Upcoming'),
  CategoryText(label: 'Tv Shows On the Air'),
  CategoryText(label: 'Popular Tv Shows'),
];
