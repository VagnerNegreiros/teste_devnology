import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:teste_devnology/common/constants/color_consntant.dart';
import 'package:teste_devnology/common/constants/image_constant.dart';
import 'package:teste_devnology/common/constants/text_constant.dart';
import 'package:teste_devnology/presentantion/cart/cart_screen_controller.dart';
import 'package:teste_devnology/presentantion/cart/widgets/item_cart_widget.dart';
import 'package:teste_devnology/presentantion/widgets/elevated_button_custom.dart';
import 'package:teste_devnology/presentantion/widgets/navigation_bar_custom.dart';

class CartScreen extends GetView<CartScreenController> {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: ColorConstant.backgroundDevnology,
          title: Row(
            children: [
              const SizedBox(width: 8),
              Image.asset(ImageConstant.imageLogo, width: 170.0, height: 26.87),
              const SizedBox(width: 120),
              Image.asset(ImageConstant.iconNotification, color: Colors.white),
              const SizedBox(width: 30),
              Image.asset(ImageConstant.iconBell, color: Colors.white),
            ],
          ),
        ),
        bottomNavigationBar: const NavigationBarCustom(
          indexNavigation: 2,
        ),
        body: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 86,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(25, 30, 0, 20),
                      child: const Text(
                        TextConstant.cart,
                        style: TextStyle(
                            color: ColorConstant.textBlack,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      width: 420,
                      child: ItemCartWidget(
                        itemsCart: controller.itemsCart,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned( bottom: 0,child: Container(
              width: 420,
              height: 86,
              color: ColorConstant.backgroundGrayDevnology,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        TextConstant.total,
                        style: TextStyle(
                            color: ColorConstant.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        TextConstant.valueTotal,
                        style: TextStyle(
                            color: ColorConstant.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  ElevatedButtonCustom(
                    text: TextConstant.checkout.toUpperCase(),
                    colorText: ColorConstant.white,
                    colorButton: ColorConstant.backgroundDevnology,
                    icon: Icons.arrow_forward_ios,
                    colorIcon: ColorConstant.white,
                    onPressed: controller.pushOrderPlacedScreen,
                  ),
                ],
              ),
            ))
          ],
        ));
  }
}
