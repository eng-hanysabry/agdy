// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_agdy_application/general/routes/router.gr.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: ((_, tabsRouter) => AppBar(
            backgroundColor: Colors.brown,
            centerTitle: true,
            title: PreferredSize(preferredSize: Size.fromHeight(20),
              child: Image.asset("assets/imgs/a.PNG",height: 80),),
            toolbarHeight: 100,
            /* actions: [
              IconButton(
                icon:
                    Icon(Icons.arrow_forward_ios_outlined, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ], */
          )),
      backgroundColor: Colors.amber,
      // ignore: prefer_const_literals_to_create_immutables
      routes: [
        HomeRoute(),
        ProfileRoute(),
        MessegesRoute(),
        NotificationsRoute()
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
               BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.black),
                label: "الرئيسية",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_box_rounded,color: Colors.black), label: "الإشعارات",),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined,color: Colors.black), label: "الرسائل"),
                  BottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined,color: Colors.black), label: "حسابي"),
            ]);
      },
    );;
    
  }
}