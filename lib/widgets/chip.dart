import 'package:flutter/material.dart';

class ChipFilter extends StatelessWidget {
  const ChipFilter({super.key, this.text = '', this.isSelected = false});

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Row(children: [
        isSelected ? Icon(Icons.check) : SizedBox.shrink(),
        Text(text)
      ]),
    );
  }
}
