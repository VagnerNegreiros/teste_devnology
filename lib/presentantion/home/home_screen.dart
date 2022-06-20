import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_devnology/common/constants/color_consntant.dart';
import 'package:teste_devnology/common/constants/image_constant.dart';
import 'package:teste_devnology/common/constants/text_constant.dart';
import 'package:teste_devnology/presentantion/home/home_screen_controller.dart';
import 'package:teste_devnology/presentantion/home/widgets/categories_widget.dart';
import 'package:teste_devnology/presentantion/home/widgets/latest_widget.dart';
import 'package:teste_devnology/presentantion/home/widgets/product_widget.dart';
import 'package:teste_devnology/presentantion/widgets/navigation_bar_custom.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            ColorConstant.backgroundGradientDevnologyInitial,
            ColorConstant.backgroundGradientDevnologyFinal
          ])),
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: ColorConstant.backgroundDevnology,
            title: Row(
              children: [
                const SizedBox(width: 8),
                Image.asset(ImageConstant.imageLogo,
                    width: 170.0, height: 26.87),
                const SizedBox(width: 120),
                Image.asset(ImageConstant.iconNotification,
                    color: Colors.white),
                const SizedBox(width: 30),
                Image.asset(ImageConstant.iconBell, color: Colors.white),
              ],
            ),
          ),
          bottomNavigationBar: const NavigationBarCustom(
            indexNavigation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(25, 30, 0, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(TextConstant.categories,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: ColorConstant.backgroundDevnology)),
                      SizedBox(
                        width: 380,
                        height: 110,
                        child: CategoriesWidget(
                          categories: controller.categories,
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      const Text(TextConstant.latest,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: ColorConstant.backgroundDevnology)),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 355,
                        height: 180,
                        child: LatestWidget(listImage: controller.latest),
                      ),
                      SizedBox(
                        width: 380,
                        height: 183,
                        child: ProductWidget(product: controller.products),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
