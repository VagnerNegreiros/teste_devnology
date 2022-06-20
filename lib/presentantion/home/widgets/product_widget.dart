import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_devnology/common/constants/color_consntant.dart';
import 'package:teste_devnology/data/models/product_model.dart';
import 'package:teste_devnology/routes/app_routues.dart';

class ProductWidget extends StatelessWidget {
  final List<ProductModel> product;

  const ProductWidget({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: product.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext _, int index) {
          return contentProduct(
            product[index].image,
            product[index].description,
            product[index].value,
          );
        }
    );
  }

  Widget contentProduct(String image, String description, String value) {
    return Container(
      width: 115,
      height: 155,
      margin: const EdgeInsets.only(top: 30,right: 11, bottom: 23),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: ColorConstant.white,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){
            Get.toNamed(AppRoutes.detailsProductScreen);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 2),
              SizedBox(
                width: 80,
                height: 80,
                child: Image.asset(
                  image,
                ),
              ),
              SizedBox(
                width: 85,
                height: 22,
                child: Text(description,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 9,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              SizedBox(
                width: 85,
                height: 22,
                child: Text(value,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 11,
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
