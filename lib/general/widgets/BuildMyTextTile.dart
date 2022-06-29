import 'package:flutter/material.dart';

class BuildMyTextTile extends StatelessWidget {
  final text;
  
  final icon;

  const BuildMyTextTile({Key? key, this.icon,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Row(
       mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(text,textAlign: TextAlign.end,style: TextStyle(fontSize: 12),),
        SizedBox(width: 5,),
        Icon(icon,size: 12),
      ],
    ),);
  }
}
