import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yeonflix/http_controller.dart';
import 'package:yeonflix/widgets/custom_sliver_app_bar.dart';

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
                  return Container(
                    color: Colors.blueGrey,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 500,
                  );
                } else {
                  return Container(
                    color: Colors.blueGrey,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.blue,
                          height: 80,
                          width: 50,
                          child: Text(controller.movieList.value.items[index].title),
                        );
                      },
                    ),
                  );
                }
              },
              childCount: 10,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            //Rap Icon in Container
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.home), Icon(Icons.video_library_outlined), Icon(Icons.arrow_circle_down_sharp)],
            ),
          ),
        ),
      ),
    );
  }
}
