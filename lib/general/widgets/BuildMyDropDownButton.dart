import 'package:flutter/material.dart';

class BuildMyDropDownButton extends StatelessWidget {
  final List<String> items;
  final String hint;
  const BuildMyDropDownButton({Key? key,required this.items, required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: DropdownButton(
          hint: Text(hint,textAlign: TextAlign.center),
          borderRadius: BorderRadius.circular(20),
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (item) {}),
    );
  }
}
