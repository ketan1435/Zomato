
import 'package:get/get.dart';
import 'package:zomato/Binding/bindind.dart';
import 'package:zomato/Pages/homescreen.dart';
import 'package:zomato/Pages/login.dart';
import 'package:zomato/Pages/sineup.dart';
import 'package:zomato/Routs/routs.dart';

class AppPage
{
static String INITIALROUTE = Route.SINEUPROUTE;
static final pages =
[
  GetPage(
      name: Route.LOGINROUTE,
      page:()=>LoginScreen(),
      binding: AppBinding()
  ),
  GetPage(
      name: Route.SINEUPROUTE,
      page:()=>SineUpScreen(),
      binding: AppBinding()
  ),
  GetPage(
      name: Route.HOMESCREENROUTE,
      page:()=>HomeScreen(),
      binding: AppBinding()
  ),
];
}