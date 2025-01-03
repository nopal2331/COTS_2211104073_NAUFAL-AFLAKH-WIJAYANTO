import 'package:get/get.dart';

class LoginController extends GetxController {
  void login(String email, String password) {
    // Implement login logic here
    Get.toNamed('/board');
  }
}