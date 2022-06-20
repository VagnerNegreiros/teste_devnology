import 'package:flutter/material.dart';
import 'package:teste_devnology/common/constants/color_consntant.dart';
import 'package:teste_devnology/data/models/categories_model.dart';

class CategoriesWidget extends StatelessWidget {
  final List<CategoriesModel> categories;

  const CategoriesWidget({Key? key, required this.categories })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext _, int index) {
          return contentCategories(
            categories[index].image,
            categories[index].name,
            categories[index].initialColor,
            categories[index].finalColor,
          );
        }
    );
  }

  Widget contentCategories(String image, String name, Color initialColor,
      Color finalColor) {
    return Container(
      padding: const EdgeInsets.only(top: 12, right: 25),
      child: Column(
        children: [
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(65)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    initialColor,
                    finalColor,
                  ],
                ),
            ),
            child: Image.asset(image),
          ),
          const SizedBox(height: 8,),
          Text(name,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: ColorConstant.textBlack
            ),),
        ],
      ),
    );
  }
}
