import 'package:flutter/material.dart';
import 'package:icmp/components/gender_selector.dart';
import 'package:icmp/components/heigth_selector.dart';
import 'package:icmp/components/number_selector.dart';

class ImcpHomeScreen extends StatefulWidget {
  const ImcpHomeScreen({super.key});

  @override
  State<ImcpHomeScreen> createState() => _ImcpHomeScreenState();
}

class _ImcpHomeScreenState extends State<ImcpHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeigthSelector(),
        Row(
          children: [
            NumberSelector(title: "Peso", value: 90),
            NumberSelector(title: "Edad", value: 30),
          ],
        ),
      ],
    );
  }
}
