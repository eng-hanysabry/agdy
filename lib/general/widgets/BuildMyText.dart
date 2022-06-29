import 'package:flutter/material.dart';

class BuildMyText extends StatelessWidget {
  final padding;

  const BuildMyText({Key? key, required this.text, this.size, this.weight,this.padding})
      : super(key: key);
  final String text;
  final double? size;
  final FontWeight? weight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:padding ?? 8),
      child: Text(
        text,
        style: TextStyle(
          fontSize: size,
          fontWeight: weight,
        ),
      ),
    );
  }
}
