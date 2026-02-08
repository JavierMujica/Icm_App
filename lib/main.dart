import 'package:flutter/material.dart';
import 'package:icmp/core/app_colors.dart';
import 'package:icmp/screns/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.primary,
          foregroundColor: Color(0xFFFFFFFF),
          title: Text("ICMP APP"),
        ),
        backgroundColor: AppColor.background,
        body: ImcpHomeScreen(),
      ),
    );
  }
}
