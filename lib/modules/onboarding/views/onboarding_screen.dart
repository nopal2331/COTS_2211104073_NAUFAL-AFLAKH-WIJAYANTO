import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: controller.pageController,
        itemCount: controller.onboardingData.length,
        itemBuilder: (context, index) {
          final data = controller.onboardingData[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Menampilkan gambar
              Image.asset(
                data['image']!,
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              // Menampilkan judul
              Text(
                data['title']!,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // Menampilkan deskripsi
              Text(
                data['description']!,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: controller.onNext,
          child: Text("Next"),
        ),
      ),
    );
  }
}