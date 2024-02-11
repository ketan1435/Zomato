
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:zomato/Controller/controller.dart';

class AppBinding extends Bindings
{
  @override
  void dependencies() {
   Get.lazyPut(() => AppController());
  }
}
class LoginBinding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }

}