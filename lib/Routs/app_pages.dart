
import 'package:get/get.dart';
import 'package:zomato/Binding/bindind.dart';
import 'package:zomato/Pages/homescreen.dart';
import 'package:zomato/Pages/login.dart';
import 'package:zomato/Pages/sineup.dart';
import 'package:zomato/Routs/routs.dart';

class AppPage
{
static String INITIALROUTE = Routes.LOGIN_ROUTE;
static final pages =
[
  GetPage(
      name: Routes.LOGIN_ROUTE,
      page:()=>LoginScreen(),
      binding: AppBinding()
  ),
  GetPage(
      name: Routes.SINEUP_ROUTE,
      page:()=>SineUpScreen(),
      binding: AppBinding()
  ),
  GetPage(
      name: Routes.HOME_SCREEN_ROUTE,
      page:()=>HomeScreen(),
      binding: AppBinding()
  ),
];
}