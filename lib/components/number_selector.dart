import 'package:flutter/material.dart';
import 'package:icmp/core/app_colors.dart';
import 'package:icmp/core/text_style.dart';

class NumberSelector extends StatefulWidget {
  final String title;
  final int values;
  final Function() onIncrement;
  final Function() onDecrement;

  const NumberSelector({
    super.key,
    required this.title,
    required this.values,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.backgroundComponent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text("${widget.title}", style: TextStyles.bodyText),
              Text(
                "${widget.values}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Spacer(),
                  FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      widget.onDecrement();
                    },
                    shape: CircleBorder(),
                    backgroundColor: AppColor.primary,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.remove),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      widget.onIncrement();
                    },
                    shape: CircleBorder(),
                    backgroundColor: AppColor.primary,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.add),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
