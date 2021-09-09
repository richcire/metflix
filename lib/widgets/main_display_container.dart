import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yeonflix/http_controller.dart';

class MainDisplayContainer extends GetView<HttpController> {
  const MainDisplayContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.nowPlayingMovieList.value.items.isEmpty
          ? CircularProgressIndicator()
          : Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 500,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://image.tmdb.org/t/p/w500${controller.nowPlayingMovieList.value.items[0].image}',
                  ),
                  fit: BoxFit.cover
                ),
              ),
            ),
    );
  }
}
