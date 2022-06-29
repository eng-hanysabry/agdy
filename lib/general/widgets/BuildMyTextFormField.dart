import 'package:flutter/material.dart';

class BuildMyTextFormField extends StatelessWidget {
  //final myController;
  
  final obsecure;
  final myController;

  const BuildMyTextFormField({Key? key,this.obsecure,this.myController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: myController,
              obscureText: obsecure,textAlign: TextAlign.end ,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'My Hint',
                label: const Text("My Label"),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
              onFieldSubmitted: (value) {
                //print(value + "  " + flag);
              },
            ),
          ),
        ],
      );
  }
}

