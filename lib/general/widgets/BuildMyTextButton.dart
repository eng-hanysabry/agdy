import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/router.gr.dart';

class BuildMyTextButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const BuildMyTextButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: TextButton(
              onPressed: () {
                AutoRouter.of(context).push(const MainRoute());
              },
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 18, decoration: TextDecoration.underline,fontWeight: FontWeight.bold),
              )),
        ));
  }
}
