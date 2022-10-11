import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/Controller/myController.dart';

import '../../../constans.dart';
import '../../../model/DB.dart';
import 'ImageAndIcon.dart';

class DetalisBtns extends StatefulWidget {
  const DetalisBtns({
    Key? key,
  }) : super(key: key);

  @override
  State<DetalisBtns> createState() => _DetalisBtnsState();
}

class _DetalisBtnsState extends State<DetalisBtns> {
  MyController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 85,
          child: MaterialButton(
            onPressed: () async{
              print(await DBHelper.query());
              print('Buy Now');
            },
            color: kPrimaryColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
            child: const Text(
              'Buy Now',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          width: size.width / 2,
          height: 85,
          child: MaterialButton(
            onPressed: () {
              controller.cardController!.toggleCard();
              print('Description');
            },
            color: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
            child: const Text(
              'Description',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
