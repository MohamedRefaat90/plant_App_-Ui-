import 'package:get/get.dart';
import 'package:plant_app/Controller/myController.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(MyController());
  }
}
