import 'package:get/get.dart';
import 'package:teste_devnology/presentantion/cart/cart_screen.dart';
import 'package:teste_devnology/presentantion/cart/cart_screen_binding.dart';
import 'package:teste_devnology/presentantion/details_product/details_product_screen.dart';
import 'package:teste_devnology/presentantion/details_product/details_product_screen_binding.dart';
import 'package:teste_devnology/presentantion/home/home_screen.dart';
import 'package:teste_devnology/presentantion/home/home_screen_binding.dart';
import 'package:teste_devnology/presentantion/order_placed/order_placed_screen.dart';
import 'package:teste_devnology/routes/app_routues.dart';

class AppScreens{
  static final routes = [
    GetPage(name: AppRoutes.home, page: () => const HomeScreen(), binding: HomeScreenBinding()),
    GetPage(name: AppRoutes.orderPlacedScreen, page: () => const OrderPlacedScreen(),),
    GetPage(name: AppRoutes.detailsProductScreen, page: () => const DetailsProductScreen(),binding: DetailsProductScreenBinding()),
    GetPage(name: AppRoutes.cartScreen, page: () => const CartScreen(),binding: CartScreenBinding()),
  ];
}