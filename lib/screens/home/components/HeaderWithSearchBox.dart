import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constans.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      margin: const EdgeInsets.only(bottom: kPadding * 1.5),
      child: Stack(children: [
        Container(
          height: size.height * 0.2 - 27,
          padding: const EdgeInsets.only(
              left: kPadding, right: kPadding, bottom: kPadding + 20),
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                    color: kPrimaryColor.withOpacity(0.30),
                    blurRadius: 50,
                    offset: const Offset(0, 10))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hi Uishopy',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Image.asset('assets/images/logo.png')
            ],
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 54,
              margin: const EdgeInsets.symmetric(horizontal: kPadding),
              padding: const EdgeInsets.symmetric(horizontal: kPadding),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: kBackgroundColor),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle:
                            TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/search.svg"),
                    padding: EdgeInsets.zero,
                  )
                ],
              ),
            ))
      ]),
    );
  }
}
