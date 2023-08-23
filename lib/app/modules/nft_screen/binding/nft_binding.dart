import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:theme_lang_app/app/modules/nft_screen/controller/nft_controller.dart';

class NftBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NftController>(
          () => NftController(),
    );
  }
}
