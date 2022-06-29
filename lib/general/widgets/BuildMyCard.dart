import 'package:flutter/material.dart';
import 'package:flutter_agdy_application/general/widgets/BuildMyText.dart';
import 'package:flutter_agdy_application/general/widgets/BuildMyTextTile.dart';

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
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    BuildMyText(
                                      text: "فلل للإيجار",
                                      weight: FontWeight.bold,
                                      size: 12,padding: 0.0,
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
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 130,
                                  child: Image.asset("assets/imgs/b.PNG",fit: BoxFit.fill,)),
                              ),
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
