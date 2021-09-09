import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yeonflix/http_controller.dart';
import 'package:yeonflix/widgets/category_text.dart';
import 'package:yeonflix/widgets/custom_bottom_app_bar.dart';
import 'package:yeonflix/widgets/custom_sliver_app_bar.dart';
import 'package:yeonflix/widgets/main_display_container.dart';
import 'package:yeonflix/widgets/movie_card.dart';

class MainScreen extends GetView<HttpController> {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Color(0xff141414),
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                if (index == 0) {
                  return MainDisplayContainer();
                } else {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: categoryTextList[index-1],
                      ),
                      MovieCard(position: index),
                    ],
                  );
                }
              },
              childCount: 6,
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}






