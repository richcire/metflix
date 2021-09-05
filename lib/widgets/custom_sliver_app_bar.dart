import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          'M',
          style: TextStyle(
              color: Color(0xffE40A15),
              fontSize: 40,
              fontWeight: FontWeight.w900),
        ),
      ),
      actions: [
        Icon(
          Icons.connected_tv,
          size: 30,
        ),
        SizedBox(width: 10),
        Icon(Icons.search, size: 30),
        SizedBox(width: 10),
        Icon(Icons.crop_square, size: 30),
        SizedBox(width: 10),
      ],
      floating: true,
      pinned: true,
      snap: false,
      expandedHeight: 100,
      bottom: PreferredSize(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('TV 프로그램', style: TextStyle(fontSize: 17)),
                Text('영화', style: TextStyle(fontSize: 17)),
                Text('카테고리', style: TextStyle(fontSize: 17)),
              ],
            ),
            SizedBox(height: 12)
          ],
        ),
        preferredSize: Size.fromHeight(40),
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
