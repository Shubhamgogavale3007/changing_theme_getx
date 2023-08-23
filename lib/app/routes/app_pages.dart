import 'package:get/get.dart';
import 'package:theme_lang_app/app/modules/dashboard_screen/binding/dashboard_binding.dart';
import 'package:theme_lang_app/app/modules/dashboard_screen/views/dashboard_screen.dart';
import 'package:theme_lang_app/app/modules/nft_screen/binding/nft_binding.dart';

import '../modules/home_screen/bindings/home_binding.dart';
import '../modules/home_screen/views/home_view.dart';
import '../modules/nft_screen/views/nft_view.dart';



part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const NftView(),
      binding: NftBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () =>  DashboardScreen(),
      binding: DashboardBinding(),
    ),
  ];
}
