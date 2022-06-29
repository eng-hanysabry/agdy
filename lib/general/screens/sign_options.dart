// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_agdy_application/general/widgets/BuildMyButton.dart';
import 'package:flutter_agdy_application/general/widgets/BuildMyText.dart';
import 'package:flutter_agdy_application/general/widgets/BuildMyTextButton.dart';


class SignOptionsPage extends StatelessWidget {
  const SignOptionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Container(
            child: Image.asset("assets/imgs/a.PNG"),
          ),
          BuildMyText(text: "تسجيل", weight: FontWeight.bold),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 10,
          ),
          // ignore: prefer_const_constructors
          BuildMyText(
            text: "سجل حسابك وانضم الينا",
            size: 18.0,
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 20,
          ),
          BuildMyButton(
              text: "تسجيل دخول",
              color: Colors.lightGreen[900],
              textColor: Colors.white),
          SizedBox(
            height: 20,
          ),
          BuildMyButton(
              text: "تسجيل جديد",
              textColor: Color.fromRGBO(26, 57, 37, 1),
              color: Colors.white),
          SizedBox(
            height: 20,
          ),
          BuildMyButton(
              text: "مشاهدة عروض المكاتب", color: Colors.lightGreen[300]),
          SizedBox(
            height: 20,
          ),
          BuildMyTextButton(text: "صورة مالك العقار",),
          SizedBox(
            height: 20,
          ),
          BuildMyButton(
            text: "اعرف قيمة عقارك",
          ),
           SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  
}
//AutoRouter.of(context).push(const RegisterRoute())