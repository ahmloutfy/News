import 'package:get/get.dart';

class ControllerOfMenu extends GetxController {
  final RxInt _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;

  List<String> get menuItems =>
      ["Cases", "Services", "About Us", "Careers", "Blog", "Contact"];

  void setMenuItems(int index) {
    _selectedIndex.value = index;
  }
}
