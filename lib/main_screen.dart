import 'package:flutter/material.dart';
import 'package:yeonflix/widgets/custom_sliver_app_bar.dart';

class MainScreen extends StatelessWidget {
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
                return Container(
                  color: Colors.blueGrey,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 100,
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
