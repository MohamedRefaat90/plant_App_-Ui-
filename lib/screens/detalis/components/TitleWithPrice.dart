import 'package:flutter/material.dart';

import '../../../constans.dart';

class TitleWithPrice extends StatelessWidget {
  const TitleWithPrice({
    Key? key,
    required this.title,
    required this.contury,
    required this.price,
  }) : super(key: key);

  final String title, contury;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: kPadding, right: kPadding, bottom: kPadding),
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: '$title\n',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.bold)),
            TextSpan(
                text: contury,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: kPrimaryColor,
                    fontSize: 24))
          ])),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold, color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
