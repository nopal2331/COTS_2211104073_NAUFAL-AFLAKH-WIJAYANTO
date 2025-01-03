import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();

  // Data onboarding dengan gambar
  final List<Map<String, String>> onboardingData = [
    {
      "title": "Welcome",
      "description": "Welcome to our app",
      "image": "assets/onboarding1.png"
    },
    {
      "title": "Explore",
      "description": "Discover amazing features",
      "image": "assets/onboarding2.png"
    },
    {
      "title": "Get Started",
      "description": "Let's get started!",
      "image": "assets/nboarding3.png"
    }
  ];

  // Navigasi ke halaman berikutnya
  void onNext() {
    if (pageController.page!.toInt() < onboardingData.length - 1) {
      pageController.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      Get.toNamed('/login');
    }
  }
}