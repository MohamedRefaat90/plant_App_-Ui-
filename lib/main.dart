import 'package:flutter/material.dart';
import 'package:plant_app/Controller/myBindings.dart';
import 'package:plant_app/Controller/myServices.dart';
import 'package:plant_app/constans.dart';
import 'package:plant_app/screens/detalis/detalis_Screen.dart';
import 'package:plant_app/screens/home/home_Screen.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

Future init() async {
  await Get.putAsync(() => MyServcies().init());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Plant App',
      debugShowCheckedModeBanner: false,
      initialBinding: MyBindings(),
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor)),
      home: const HomeScreen(),
      routes: {'Detalis': (context) => DetalisScreen()},
    );
  }
}
