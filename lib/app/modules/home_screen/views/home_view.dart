import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_lang_app/app/data/theme.dart';

import '../../nft_screen/views/nft_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Obx(
            () => Container(
              width: 90,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    // Initial Value
                    value: controller.selectLanguage!.value,

                    // Down Arrow Icon
                    icon: const Icon(
                      Icons.arrow_drop_down_rounded,
                    ),

                    // Array list of items
                    items: [
                      DropdownMenuItem(
                          value: "English", child: Text("English")),
                      DropdownMenuItem(value: "Hindi", child: Text("Hindi")),
                      DropdownMenuItem(
                          value: "Gujarati", child: Text("Gujarati")),
                    ],
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (value) {
                      print('------>${value}');

                      controller.selectLanguage!.value = value.toString();
                      print('===>${controller.selectLanguage!.value}');

                      if (controller.selectLanguage!.value == 'English') {
                        var locale = Locale('en', 'US');
                        controller.check('english');
                        Get.updateLocale(locale);

                        print('===+++====${locale}');
                      } else if (controller.selectLanguage!.value == 'Hindi') {
                        var locale = Locale('hn', 'IN');
                        controller.check('hindi');
                        Get.updateLocale(locale);
                        print('===+++====${locale}');
                      } else if (controller.selectLanguage!.value ==
                          'Gujarati') {
                        var locale = Locale('gj', 'IN');
                        controller.check('gujarati');
                        Get.updateLocale(locale);
                        print('===+++====${locale}');
                      }
                    }),
              ),
            ),
          ),
          Obx(
            () => Padding(
              padding: const EdgeInsets.all(20),
              child: CupertinoSwitch(
                  value: controller.isSwitch.value,
                  onChanged: (value) {
                    controller.isThemesChange.value =
                        !controller.isThemesChange.value;
                    controller.isSwitch.value = !controller.isSwitch.value;
                    if (controller.isSwitch.value == true) {
                      Get.changeTheme(changeTheme().dark);
                    } else {
                      Get.changeTheme(changeTheme().light);
                    }
                  }),
            ),
          ),
        ],
      ),
      floatingActionButton: InkWell(
        child: CircleAvatar(
          radius: 35,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.arrow_forward_outlined,
              size: 30,
            ),
            onPressed: () {
              Get.to(NftView());
            },
          ),
        ),
        onTap: () {
          Get.to(NftView());
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Obx(() => Image.asset(
                      'assets/images/Batman-Logo.png',
                      color: controller.isThemesChange.value
                          ? Colors.white
                          : Colors.black,
                    ))),
            SizedBox(
              height: 250,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Leap in the banking the world loves'.tr,
                style: GoogleFonts.comfortaa(
                    fontSize: 40, fontWeight: FontWeight.w800),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
