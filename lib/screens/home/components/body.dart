import 'package:flutter/material.dart';
import 'package:plant_app/constans.dart';
import 'package:plant_app/model/DB.dart';
import 'FeaturedPlantes.dart';
import 'HeaderWithSearchBox.dart';
import 'RecommendedPlants.dart';
import 'TitleWithMoreBtn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
              text: "Recommended",
              press: () {
                // DBHelper.deleteDB();
                return print('More Recommended');
              }),
          RecommenedPlants(),
          TitleWithMoreBtn(
              text: "Featured Plants",
              press: () {
                return print('More Featured');
              }),
          const FeaturedPLANTES(),
        ],
      ),
    );
  }
}
