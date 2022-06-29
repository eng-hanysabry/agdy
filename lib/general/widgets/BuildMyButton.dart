import 'package:flutter/material.dart';

class BuildMyButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final OutlinedBorder? outlinedBorder;
  final double? size;
  final FontWeight? weight;

  const BuildMyButton(
      {Key? key,
      required this.text,
      this.color,
      this.outlinedBorder,
      this.textColor,
      this.size,
      this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            width: 2,
            color: Colors.green,
            style: BorderStyle.solid,
          ),
        ),
        child: OutlinedButton(
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          style: OutlinedButton.styleFrom(
            backgroundColor: color ?? Colors.white,
            shape: outlinedBorder ??
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
          ),
        ),
      ),
    );
  }
}
