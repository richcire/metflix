import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yeonflix/intibinding.dart';

import 'main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      initialBinding: InitBinding(),
      home: MainScreen(),
    );
  }
}
