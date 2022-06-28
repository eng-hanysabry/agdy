import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessegesPage extends StatefulWidget {
  const MessegesPage({Key? key}) : super(key: key);

  @override
  State<MessegesPage> createState() => _MessegesPageState();
}

class _MessegesPageState extends State<MessegesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.orange,);
  }
}