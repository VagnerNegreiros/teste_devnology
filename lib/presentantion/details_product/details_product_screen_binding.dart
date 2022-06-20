import 'package:get/get.dart';
import 'package:teste_devnology/presentantion/details_product/details_product_screen_controller.dart';

class DetailsProductScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>DetailsProductScreenController());
  }
}