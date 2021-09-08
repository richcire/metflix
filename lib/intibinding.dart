import 'package:get/get.dart';
import 'package:yeonflix/http_controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HttpController());
  }
}
