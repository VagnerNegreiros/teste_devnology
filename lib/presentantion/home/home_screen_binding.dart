import 'package:get/get.dart';
import 'package:teste_devnology/presentantion/home/home_screen_controller.dart';

class HomeScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>HomeScreenController());
  }
}