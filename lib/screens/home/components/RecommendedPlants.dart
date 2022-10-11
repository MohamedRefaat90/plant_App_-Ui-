import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/Controller/myController.dart';

import '../../../constans.dart';
import '../../../model/plant.dart';
import '../../detalis/detalis_Screen.dart';

class RecommenedPlants extends StatelessWidget {
  RecommenedPlants({
    Key? key,
  }) : super(key: key);

  final MyController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(
          Data.length,
          (index) => RecommendedPlantCard(
            image: '${Data[index].image}',
            title: '${Data[index].title}',
            contury: '${Data[index].country}',
            price: Data[index].price!,
            press: () {
              Get.to(() => DetalisScreen(), arguments: {
                'image': Data[index].image,
                'title': Data[index].title,
                'country': Data[index].country,
                'price': Data[index].price,
                'index': index
              });
            },
          ),
        )));
  }
}

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.contury,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, contury;
  final int price;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => press(),
      child: Container(
        width: size.width * .4,
        padding: const EdgeInsets.only(
            left: kPadding, top: kPadding / 2, bottom: kPadding * 2.5),
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: kPadding / 2, vertical: kPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: kPrimaryColor.withOpacity(.2),
                        blurRadius: 50,
                        offset: const Offset(0, 10))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: '$title \n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                          text: contury.toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(.7)))
                    ]),
                  ),
                  Text(
                    '\$$price',
                    style: const TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
