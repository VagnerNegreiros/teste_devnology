import 'package:get/get.dart';
import 'package:teste_devnology/common/constants/image_constant.dart';
import 'package:teste_devnology/common/constants/text_constant.dart';
import 'package:teste_devnology/data/models/item_cart_model.dart';
import 'package:teste_devnology/routes/app_routues.dart';

class CartScreenController extends GetxController{

  List<ItemCartModel> itemsCart = [
    ItemCartModel(
      ImageConstant.imageThinkPad,
      TextConstant.textCardProductOne,
      TextConstant.valueLenovoThinkPad,
      TextConstant.numberOne,
    ),
    ItemCartModel(
      ImageConstant.imageIdeaPad,
      TextConstant.textCardProductTwo,
      TextConstant.valueLenovoIdeaPad,
      TextConstant.numberOne,
    ),
  ];

  void pushOrderPlacedScreen(){
    Get.toNamed(AppRoutes.orderPlacedScreen);
  }
}