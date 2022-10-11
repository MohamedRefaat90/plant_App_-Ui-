import 'package:flip_card/flip_card_controller.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  FlipCardController? cardController;

  @override
  void onInit() {
    cardController = FlipCardController();
    super.onInit();
  }
}
