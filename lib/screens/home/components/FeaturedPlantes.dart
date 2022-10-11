import 'package:flutter/material.dart';

import '../../../constans.dart';

class FeaturedPLANTES extends StatelessWidget {
  const FeaturedPLANTES({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlant(image: 'assets/images/bottom_img_1.png', press: () {}),
          FeaturedPlant(image: 'assets/images/bottom_img_2.png', press: () {}),
        ],
      ),
    );
  }
}

class FeaturedPlant extends StatelessWidget {
  const FeaturedPlant({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => press,
      child: Container(
        width: size.width * .8,
        height: 185,
        margin: const EdgeInsets.only(
            left: kPadding,
            top: kPadding,
            bottom: kPadding / 2,
            right: kPadding / 2),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Image(image: AssetImage(image), fit: BoxFit.cover),
      ),
    );
  }
}
