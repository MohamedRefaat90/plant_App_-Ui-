import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/body.dart';

class DetalisScreen extends StatelessWidget {
  DetalisScreen({Key? key}) : super(key: key);

  final Map data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(plantData: data),
    );
  }
}
