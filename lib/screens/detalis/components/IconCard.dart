import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constans.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 62,
      height: 62,
      padding: const EdgeInsets.all(kPadding / 1.5),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                offset: const Offset(0, 15),
                color: kPrimaryColor.withOpacity(0.2)),
            const BoxShadow(
                blurRadius: 20, offset: Offset(-15, -15), color: Colors.white),
          ]),
      child: SvgPicture.asset(icon),
    );
  }
}
