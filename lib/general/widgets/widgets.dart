// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_agdy_application/general/routes/router.gr.dart';

class BuildMyText extends StatelessWidget {
  const BuildMyText({Key? key, required this.text, this.size, this.weight})
      : super(key: key);
  final String text;
  final double? size;
  final FontWeight? weight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
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
class BuildMyTextTile extends StatelessWidget {
  final text;
  
  final icon;

  const BuildMyTextTile({Key? key, this.icon,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Row(
       mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(text,textAlign: TextAlign.end),
        SizedBox(width: 5,),
        Icon(icon,),
      ],
    ),);
  }
}

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
class BuildMyCard extends StatelessWidget {
  const BuildMyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,vertical: 5
                ),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    BuildMyText(
                                      text: "فلل للإيجار",
                                      weight: FontWeight.bold,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    BuildMyTextTile(
                                        text: "فلل للايجار",
                                        icon: Icons.location_on_outlined),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    BuildMyTextTile(
                                        text: "فلل للايجار", icon: Icons.mail),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    BuildMyTextTile(
                                        text: "فلل للايجار",
                                        icon: Icons.date_range_sharp),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    BuildMyTextTile(
                                        text: "فلل للايجار",
                                        icon: Icons.location_city),
                                    SizedBox(
                                      height: 2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Image.asset("assets/imgs/a.PNG",
                                  fit: BoxFit.fitHeight),
                              flex: 1,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ;
  }
}

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

