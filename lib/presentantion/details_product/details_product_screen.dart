import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_devnology/common/constants/color_consntant.dart';
import 'package:teste_devnology/common/constants/image_constant.dart';
import 'package:teste_devnology/common/constants/text_constant.dart';
import 'package:teste_devnology/presentantion/details_product/details_product_screen_controller.dart';
import 'package:teste_devnology/presentantion/details_product/widgets/carousel_widget.dart';
import 'package:teste_devnology/presentantion/widgets/elevated_button_custom.dart';

class DetailsProductScreen extends GetView<DetailsProductScreenController> {
  const DetailsProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.backgroundDevnology,
          title: Row(
            children: [
              const SizedBox(width: 50),
              Image.asset(ImageConstant.imageLogo, width: 170.0, height: 26.87),
              const SizedBox(width: 75),
              Stack(children: [
                const Icon(Icons.shopping_cart),
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 8),
                  height: 14,
                  width: 13,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: ColorConstant.colorBadgeNavigationBar,
                  ),
                  child: const Text(
                    " ${TextConstant.numberTwo}",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: ColorConstant.white),
                  ),
                ),
              ])
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 86,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(25, 0, 5, 10),
                        width: 325,
                        height: 72,
                        child: const Text(
                          TextConstant.textDescriptionProduct,
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 220,
                        width: 500,
                        child: Center(
                            child: CarouselWidget(
                              imagesProduct: controller.imagesProduct,
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20, top: 10),
                        child: const Text(
                          TextConstant.price,
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Text(
                          TextConstant.valueLenovoThinkPad,
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Text(
                          TextConstant.aboutItem,
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Text(
                          TextConstant.textAboutItem,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 86,
                  color: ColorConstant.backgroundGrayDevnology,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButtonCustom(
                        text: TextConstant.shareThis.toUpperCase(),
                        colorText: ColorConstant.backgroundDevnology,
                        colorButton: ColorConstant.white,
                        icon: Icons.keyboard_arrow_up,
                        colorIcon: ColorConstant.backgroundDevnology,
                        onPressed: () {},
                      ),
                      ElevatedButtonCustom(
                        text: TextConstant.addToCard.toUpperCase(),
                        colorText: ColorConstant.white,
                        colorButton: ColorConstant.backgroundDevnology,
                        icon: Icons.arrow_forward_ios,
                        colorIcon: ColorConstant.white,
                        onPressed: controller.pushCartScreen,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
