import 'package:get/get.dart';

class BoardController extends GetxController {
  var selectedIndex = 0.obs; // State untuk tab yang dipilih

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }
}