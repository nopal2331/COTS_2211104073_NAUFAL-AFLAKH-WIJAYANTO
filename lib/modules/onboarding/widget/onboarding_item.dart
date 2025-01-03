import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget {
  final Map<String, String> data;

  const OnboardingItem({required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(data['title']!, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        Text(data['description']!, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}