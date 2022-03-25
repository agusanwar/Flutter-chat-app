import 'package:chatapp/controllers/animation.controller.dart';
import 'package:get/get.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ControllerAnimation());
  }
}
