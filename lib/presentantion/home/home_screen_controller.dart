import 'package:get/get.dart';
import 'package:teste_devnology/common/constants/color_consntant.dart';
import 'package:teste_devnology/common/constants/image_constant.dart';
import 'package:teste_devnology/common/constants/text_constant.dart';
import 'package:teste_devnology/data/models/categories_model.dart';
import 'package:teste_devnology/data/models/latest_model.dart';
import 'package:teste_devnology/data/models/product_model.dart';

class HomeScreenController extends GetxController{
  List<CategoriesModel> categories = [
    CategoriesModel(
      ImageConstant.imageApparel,
      TextConstant.apparel,
      ColorConstant.orangeGradientInitial,
      ColorConstant.orangeGradientFinal,
    ),
    CategoriesModel(
      ImageConstant.imageBeauty,
      TextConstant.beauty,
      ColorConstant.blueGradientInitial,
      ColorConstant.blueGradientFinal,
    ),
    CategoriesModel(
      ImageConstant.imageShoes,
      TextConstant.shoes,
      ColorConstant.greenGradientInitial,
      ColorConstant.greenGradientFinal,
    ),
    CategoriesModel(
      ImageConstant.imageSeeAll,
      TextConstant.seeAll,
      ColorConstant.white,
      ColorConstant.white,
    ),
  ];

  List<LatestModel> latest = [
    LatestModel(ImageConstant.imageBanner1),
    LatestModel(ImageConstant.imageBanner2),
  ];

  List<ProductModel> products = [
    ProductModel(
      ImageConstant.imageIdeaPad,
      TextConstant.descriptionLenovoIdeaPad,
      TextConstant.valueLenovoIdeaPad
    ),
    ProductModel(
      ImageConstant.imageThinkPad,
      TextConstant.descriptionLenovoThinkPad,
      TextConstant.valueLenovoThinkPad,
    ),
    ProductModel(
      ImageConstant.imageLenovoTwoInOne,
      TextConstant.descriptionLenovoTwoInOne,
      TextConstant.valueLenovoTwoInOne,
    ),
  ];


}