import 'package:flutter/material.dart';

class NumberSelector extends StatefulWidget {
  final String title;
  final int value;

  const NumberSelector({super.key, required this.title, required this.value});

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [Text("${widget.title}")]);
  }
}
