import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../../Controller/myController.dart';
import '../../../constans.dart';
import 'IconCard.dart';
import 'package:flip_card/flip_card.dart';

GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.image,
    required this.title,
    required this.contury,
    // required this.size,
  }) : super(key: key);

  final String image, title, contury;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    MyController controller = Get.find();
    return Padding(
      padding: const EdgeInsets.only(bottom: kPadding * 1.5),
      child: SizedBox(
        height: size.height * .80,
        child: Row(
          children: [
            Expanded(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: kPadding * 2, horizontal: kPadding),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back_ios, size: 30)),
                  ),
                ),
                const Spacer(),
                const IconCard(icon: 'assets/icons/sun.svg'),
                const IconCard(icon: 'assets/icons/icon_2.svg'),
                const IconCard(icon: 'assets/icons/icon_3.svg'),
                const IconCard(icon: 'assets/icons/icon_4.svg'),
              ],
            )),
            FlipCard(
              fill: Fill.fillBack,
              flipOnTouch: false,
              controller: controller.cardController,
              front: Container(
                width: size.width * 0.75,
                height: size.height * 0.8,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 60,
                        offset: const Offset(10, 10),
                        color: kPrimaryColor.withOpacity(0.4))
                  ],
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage(image),
                      fit: BoxFit.cover),
                ),
              ),
              back: Container(
                padding: EdgeInsets.symmetric(
                    vertical: kPadding * 3, horizontal: kPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: kPrimaryColor, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 80,
                      child: Text(
                        contury,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(.6),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(height: 20),
                    Text(
                        
                        "Fugiat irure ad nisi occaecat ex quis laboris. Ea labore magna nisi ad Lorem incididunt. Pariatur nisi quis sit mollit. Ex aute nisi officia do voluptate labore ipsum pariatur. Ipsum non exercitation voluptate pariatur nisi ipsum ad pariatur eu voluptate in et ad sunt. Minim ut excepteur voluptate in dolore minim elit in laboris.",
                        style: TextStyle(height: 1.5, fontSize: 15),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
