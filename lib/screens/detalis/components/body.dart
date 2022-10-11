import 'package:flutter/material.dart';
import 'DetalisBtns.dart';
import 'ImageAndIcon.dart';
import 'TitleWithPrice.dart';

class Body extends StatelessWidget {
  const Body({Key? key, this.plantData}) : super(key: key);
  final plantData;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageAndIcons(
                image: plantData['image'],
                title: plantData['title'],
                contury: plantData['country']),
            TitleWithPrice(
              title: plantData['title'],
              contury: plantData['country'],
              price: plantData['price'],
            ),
            DetalisBtns()
          ],
        ),
      ),
    );
  }
}
