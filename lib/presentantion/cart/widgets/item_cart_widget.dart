import 'package:flutter/material.dart';
import 'package:teste_devnology/common/constants/color_consntant.dart';
import 'package:teste_devnology/common/constants/text_constant.dart';
import 'package:teste_devnology/data/models/item_cart_model.dart';

class ItemCartWidget extends StatelessWidget {
  final List<ItemCartModel> itemsCart;

  const ItemCartWidget({Key? key, required this.itemsCart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: itemsCart.map((e) => contentItemCart(
        e.image,
        e.description,
        e.value,
        e.quantity,
      )).toList(),
    );
  }

  Widget contentItemCart(String image, String description, String value, String quantity) {
    return Container(
      margin: const EdgeInsets.only(left: 25, bottom: 15),
      child: Row(
        children: [
          Image.asset(image,height: 100,width: 100,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 22),
                width: 204,
                height: 45,
                child: Text(
                  description,
                  style: const TextStyle(
                      fontSize: 11, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 22),
                child: Text(
                  value,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ),
              Row(
                children: [
                  MaterialButton(
                    height: 14,
                    minWidth: 4,
                    onPressed: () {},
                    color: ColorConstant.backgroundDevnology,
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(4),
                    shape: const CircleBorder(),
                    child: const Text(TextConstant.minusSign),
                  ),
                  Text(quantity,
                    style: const TextStyle(fontSize: 14,
                        fontWeight: FontWeight.w700),),
                  MaterialButton(
                    height: 14,
                    minWidth: 4,
                    onPressed: () {},
                    color: ColorConstant.backgroundDevnology,
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(4),
                    shape: const CircleBorder(),
                    child: const Text(TextConstant.plusSign),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
