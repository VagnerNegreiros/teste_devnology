import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_devnology/common/constants/color_consntant.dart';
import 'package:teste_devnology/common/constants/text_constant.dart';
import 'package:teste_devnology/routes/app_routues.dart';

class NavigationBarCustom extends StatefulWidget {
  final int indexNavigation;
  const NavigationBarCustom({Key? key, required this.indexNavigation}) : super(key: key);

  @override
  State<NavigationBarCustom> createState() => _NavigationBarCustomState();
}

class _NavigationBarCustomState extends State<NavigationBarCustom> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    currentIndex = widget.indexNavigation;

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTabTapped,
      backgroundColor: ColorConstant.backgroundDevnology,
      selectedItemColor: ColorConstant.fixedColorNavigationBar,
      selectedIconTheme: const IconThemeData(color: ColorConstant.fixedColorNavigationBar,size: 23),
      unselectedIconTheme: const IconThemeData(color: ColorConstant.white,size: 23),
      unselectedItemColor: ColorConstant.white,
      type: BottomNavigationBarType.fixed,
      items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: TextConstant.home),
        const BottomNavigationBarItem(icon: Icon(Icons.search), label: TextConstant.search),
        BottomNavigationBarItem(icon: Stack(children: [
          const Icon(Icons.shopping_cart),
          Container(
            margin: const EdgeInsets.only(left: 10,top: 8),
            height: 14,
            width: 13,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: ColorConstant.colorBadgeNavigationBar,
            ),
            child: const Text(" ${TextConstant.numberTwo}",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: ColorConstant.white),),
          ),
        ]), label: TextConstant.cart),
        const BottomNavigationBarItem(icon: Icon(Icons.person_outline_sharp), label: TextConstant.profile),
        const BottomNavigationBarItem(icon: Icon(Icons.menu), label: TextConstant.more),
      ],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });

    switch (index) {
      case 0:
        Get.offNamed(AppRoutes.home);
        break;
      case 2:
        Get.offNamed(AppRoutes.cartScreen);
        break;
    }

  }

}
