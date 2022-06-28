import 'package:auto_route/annotations.dart';
import 'package:flutter_agdy_application/general/screens/sign_options.dart';
import 'package:flutter_agdy_application/general/screens/main_home.dart/home_page.dart';
import 'package:flutter_agdy_application/general/screens/main_home.dart/main_page.dart';
import 'package:flutter_agdy_application/general/screens/main_home.dart/messeges.dart';
import 'package:flutter_agdy_application/general/screens/main_home.dart/notifications.dart';
import 'package:flutter_agdy_application/general/screens/main_home.dart/profile.dart';

import 'package:flutter_agdy_application/general/screens/register_page.dart';


@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: SignOptionsPage,
      initial: true,
    ),
    AutoRoute(
      page: RegisterPage,
    ),
    AutoRoute(page: MainPage,
    children: [
      AutoRoute(page: HomePage,initial: true),
      AutoRoute(page: ProfilePage),
      AutoRoute(page: NotificationsPage),
      AutoRoute(page: MessegesPage)
    ])
  ],
)
class $AppRouter {}
