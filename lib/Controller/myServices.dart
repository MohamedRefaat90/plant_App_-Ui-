import 'package:get/get.dart';

import '../model/DB.dart';

class MyServcies extends GetxService {
  DBHelper DB = DBHelper();
  Future<MyServcies> init() async {
    await DB.initDB();
    return this;
  }
}
