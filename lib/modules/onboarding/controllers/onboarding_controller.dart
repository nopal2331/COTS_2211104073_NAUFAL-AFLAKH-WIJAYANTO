import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();

  // Data onboarding dengan gambar
  final List<Map<String, String>> onboardingData = [
    {
      "title": "Selamat datang di gojek!",
      "description": "Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin  semua kebutuhan mu, kapanpun, dan dimanapun",
      "image": "assets/images/onboarding1.png"
    },
    {
      "title": "Transportasi & logistik",
      "description": "Antarin kamu jalan atau ambilin barang lebih gampang tinggal  ngeklik doang",
      "image": "assets/images/onboarding2.png"
    },
    {
      "title": "Pesan makan & belanja",
      "description": "Lagi ngidam sesuatu? Gojek beliin gak pakai lama.",
      "image": "assets/images/onboarding3.png"
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
