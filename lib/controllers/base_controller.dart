import 'package:get/get_state_manager/get_state_manager.dart';

class BaseController extends GetxController {
  int _navIndexSelected = 1;
  int get navIndexSelected => _navIndexSelected;
  set navIndexSelected(int value) {
    _navIndexSelected = value;
    update();
  }
}
