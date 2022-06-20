import 'package:get/get.dart';
import 'package:teste_devnology/common/constants/image_constant.dart';
import 'package:teste_devnology/routes/app_routues.dart';

class DetailsProductScreenController extends GetxController{

  List<String> imagesProduct = [
    ImageConstant.imageThinkPad,
    ImageConstant.imageThinkPad,
    ImageConstant.imageThinkPad,
  ];

  void pushCartScreen(){
    Get.toNamed(AppRoutes.cartScreen);
  }
}