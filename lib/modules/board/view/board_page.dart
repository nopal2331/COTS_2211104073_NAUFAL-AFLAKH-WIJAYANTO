import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/boarding_controller.dart';
import '../view/home_page.dart';
import '../view/promo_page.dart';
import '../view/orders_page.dart';
import '../widgets/custom_bottom_navbar.dart';

class BoardPage extends StatelessWidget {
  final BoardController controller = Get.put(BoardController());

  final List<Widget> pages = [
    HomePage(),
    PromoPage(),
    OrdersPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: pages[controller.selectedIndex.value],
        bottomNavigationBar: CustomBottomNavbar(
          selectedIndex: controller.selectedIndex.value,
          onTap: (index) => controller.changeTabIndex(index),
        ),
      );
    });
  }
}