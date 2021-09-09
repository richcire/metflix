import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yeonflix/http_controller.dart';

class MovieCard extends GetView<HttpController> {
  const MovieCard({
    Key? key,
    required this.position,
  }) : super(key: key);
  final int position;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return Obx(
            () => controller.popularTvList.value.items.isEmpty
                ? CircularProgressIndicator()
                : Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Colors.blue,
                      image: DecorationImage(
                        image: NetworkImage('https://image.tmdb.org/t/p/w500${controller.getCategory(position).value.items[index].image}'),
                        fit: BoxFit.cover
                      )
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 6),

                    width: 110,
                  ),
          );
        },
      ),
    );
  }
}
