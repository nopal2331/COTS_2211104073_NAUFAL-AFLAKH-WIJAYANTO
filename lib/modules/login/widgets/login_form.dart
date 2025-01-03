import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginForm extends StatelessWidget {
  final LoginController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(decoration: InputDecoration(labelText: "Email")),
          SizedBox(height: 20),
          TextField(decoration: InputDecoration(labelText: "Password"), obscureText: true),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => controller.login("email@example.com", "password123"),
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}