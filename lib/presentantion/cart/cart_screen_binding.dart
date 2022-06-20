import 'package:get/get.dart';
import 'package:teste_devnology/presentantion/cart/cart_screen_controller.dart';

class CartScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>CartScreenController());
  }
}