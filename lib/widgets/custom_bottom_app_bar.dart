import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          //Rap Icon in Container
          child: Row(
            children: [Expanded(child: Icon(Icons.home)), Expanded(child: Icon(Icons.video_library_outlined)), Expanded(child: Icon(Icons.arrow_circle_down_sharp))],
          ),
        ),
      ),
    );
  }
}