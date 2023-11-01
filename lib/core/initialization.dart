import 'package:get/get.dart';
import 'package:gwala_interview/controllers/base_controller.dart';
import 'package:gwala_interview/controllers/home_controller.dart';

class InitializeApp {
  static Future<void> initGetx() async {
    // controllers
    Get.lazyPut(() => BaseController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
  }
}
