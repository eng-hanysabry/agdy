// ignore_for_file: prefer_const_constructors
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_agdy_application/general/widgets/BuildMyText.dart';
import 'package:flutter_agdy_application/general/widgets/BuildMyTextFormField.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      var textController =TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(248, 255, 253, 1),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image.asset("assets/imgs/a.PNG"),
              ),
              BuildMyText(text: " تسجيل جديد", weight: FontWeight.bold),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 10,
              ),
              BuildMyText(text: "سجل الان وانضم الينا ", weight: FontWeight.bold),
              SizedBox(height: 40,),
              BuildMyTextFormField(obsecure: false,myController: textController,)
            ],
          ),
        ),
      ),
    );
  }
}
