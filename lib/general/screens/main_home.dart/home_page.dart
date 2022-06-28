import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_agdy_application/general/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(248, 255, 253, 1),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          BuildMyDropDownButton(
                            items: items,
                            hint: "المنطقة",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          BuildMyDropDownButton(
                            items: items,
                            hint: "المدينة",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          BuildMyDropDownButton(
                            items: items,
                            hint: "الحي",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          BuildMyDropDownButton(
                            items: items,
                            hint: "نوع العرض",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.search, color: Colors.white),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(10),
                              primary: Color.fromRGBO(
                                  26, 57, 37, 1), // <-- Button color
                              // <-- Splash color
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromRGBO(26, 57, 37, 1))),
                            onPressed: () {},
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('اضافة طلب'), // <-- Text
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  // <-- Icon
                                  Icons.add,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromRGBO(26, 57, 37, 1))),
                            onPressed: () {},
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text('اضافة اعلان'), // <-- Text
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  // <-- Icon
                                  Icons.add,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

           Expanded(
             child: SingleChildScrollView(
              child: Column(
                children: [
                   BuildMyCard(),
                BuildMyCard(),
                BuildMyCard(),
                BuildMyCard(),
                BuildMyCard(),
                ],
              ),
             ),
           )
            
            ],
        ),
      ),
    );;
    
  }
}