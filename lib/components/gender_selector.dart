import 'package:flutter/material.dart';
import 'package:icmp/core/app_colors.dart';
import 'package:icmp/core/text_style.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? _selectedGender;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Hombre
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _selectedGender = "Hombre";
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                right: 8,
                left: 16,
                top: 16,
                bottom: 16,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: _selectedGender == "Hombre"
                      ? AppColor.backgroundComponentSelected
                      : AppColor.backgroundComponent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Image.asset("assets/images/hombre.png", height: 100),
                      SizedBox(height: 10),
                      Text("Hombre", style: TextStyles.bodyText),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        //Mujer
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _selectedGender = "Mujer";
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                right: 16,
                left: 8,
                top: 16,
                bottom: 16,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: _selectedGender == "Mujer"
                      ? AppColor.backgroundComponentSelected
                      : AppColor.backgroundComponent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Image.asset("assets/images/mujer.png", height: 100),
                      SizedBox(height: 10),
                      Text("Mujer", style: TextStyles.bodyText),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
