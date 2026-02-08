import 'package:flutter/material.dart';
import 'package:icmp/core/app_colors.dart';
import 'package:icmp/core/text_style.dart';

class HeigthSelector extends StatefulWidget {
  final double heigth;
  final Function(double) onHeigthChange;

  const HeigthSelector({
    super.key,
    required this.heigth,
    required this.onHeigthChange,
  });

  @override
  State<HeigthSelector> createState() => _HeigthSelectorState();
}

class _HeigthSelectorState extends State<HeigthSelector> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.backgroundComponent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(height: 8),
            Text("Altura", style: TextStyles.bodyText),
            Text(
              "${widget.heigth.toStringAsFixed(0)} cm",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Slider(
              value: widget.heigth,
              onChanged: (newHeigth) {
                widget.onHeigthChange(newHeigth);
              },
              min: 100,
              max: 250,
              divisions: 150,
              label: (widget.heigth.toStringAsFixed(0)),
              activeColor: AppColor.primary,
            ),
          ],
        ),
      ),
    );
  }
}
