
import 'package:ecommerce/Profile/ProfileScreen.dart';
import 'package:flutter/material.dart';


class pro extends StatelessWidget {
  const pro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: ProfileScreen(),
    );
  }
}
