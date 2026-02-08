import 'package:flutter/material.dart';
import 'package:icmp/components/gender_selector.dart';
import 'package:icmp/components/heigth_selector.dart';
import 'package:icmp/components/number_selector.dart';
import 'package:icmp/core/app_colors.dart';
import 'package:icmp/screns/imcp_results.dart';

class ImcpHomeScreen extends StatefulWidget {
  const ImcpHomeScreen({super.key});

  @override
  State<ImcpHomeScreen> createState() => _ImcpHomeScreenState();
}

class _ImcpHomeScreenState extends State<ImcpHomeScreen> {
  int _weight = 60;
  int _age = 20;
  double _heigth = 150;
  String _gender = "Hombre";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(
          selectedGender: _gender,
          onGenderSelected: (newGender) {
            setState(() {
              _gender = newGender;
            });
          },
        ),
        HeigthSelector(
          heigth: _heigth,
          onHeigthChange: (newHeigth) {
            setState(() {
              _heigth = newHeigth;
            });
          },
        ),
        Row(
          children: [
            SizedBox(width: 16),
            Expanded(
              child: NumberSelector(
                title: "Peso",
                values: _weight,
                onIncrement: () {
                  setState(() {
                    _weight++;
                  });
                },
                onDecrement: () {
                  setState(() {
                    _weight--;
                  });
                },
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: NumberSelector(
                title: "Edad",
                values: _age,
                onIncrement: () {
                  setState(() {
                    _age++;
                  });
                },
                onDecrement: () {
                  setState(() {
                    _age--;
                  });
                },
              ),
            ),
            SizedBox(width: 16),
          ],
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 40,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImcpResults(
                      heigth: _heigth,
                      age: _age,
                      weigth: _weight,
                      gender: _gender,
                    ),
                  ),
                );
              },
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(AppColor.primary),
                foregroundColor: WidgetStateProperty.all(Colors.white),
              ),
              child: Text("Calcular IMCP"),
            ),
          ),
        ),
      ],
    );
  }
}
