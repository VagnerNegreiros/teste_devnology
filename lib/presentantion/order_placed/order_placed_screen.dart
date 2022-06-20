import 'package:flutter/material.dart';
import 'package:teste_devnology/common/constants/color_consntant.dart';
import 'package:teste_devnology/common/constants/image_constant.dart';
import 'package:teste_devnology/common/constants/text_constant.dart';
import 'package:teste_devnology/presentantion/widgets/elevated_button_custom.dart';

class OrderPlacedScreen extends StatelessWidget {
  const OrderPlacedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: ColorConstant.backgroundDevnology,
            title: Container(
              margin: const EdgeInsets.only(left: 50),
              child: Image.asset(ImageConstant.imageLogo,
                  width: 170.0, height: 26.87),
            )),
        body: SizedBox(
          width: 500,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(137, 121, 137, 30),
                child: Image.asset(ImageConstant.imageOrderPlaced),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 23),
                child: const Text(TextConstant.orderPlaced,
                  style: TextStyle(fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: ColorConstant.textBlack),),
              ),
              Container(
                width: 280,
                height: 48,
                margin: const EdgeInsets.only(bottom: 80),
                child: const Text(TextConstant.textOrderPlaced,
                  style: TextStyle(fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ColorConstant.textBlack,
                  ),
                textAlign: TextAlign.center,),
              ),
              ElevatedButtonCustom(
                text: TextConstant.myOrders.toUpperCase(),
                colorText : ColorConstant.white,
                colorButton: ColorConstant.backgroundDevnology,
                icon: Icons.arrow_forward_ios,
                colorIcon: ColorConstant.white,
                onPressed: (){},
              ),
            ],
          ),
        )
    );
  }
}
