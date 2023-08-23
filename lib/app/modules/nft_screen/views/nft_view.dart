import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'dart:math' as math;
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theme_lang_app/app/modules/dashboard_screen/views/dashboard_screen.dart';

import '../controller/nft_controller.dart';

class NftView extends GetView<NftController> {
  const NftView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Explore\t'.tr,
                  style: GoogleFonts.comfortaa(
                      fontSize: 35, fontWeight: FontWeight.w900),
                ),
                TextSpan(
                  text: 'Collect\n'.tr,
                  style: GoogleFonts.comfortaa(
                    fontSize: 35,
                  ),
                ),
                WidgetSpan(
                  child: SizedBox(height: 50),
                ),
                TextSpan(
                  text: 'and Sell more\t'.tr,
                  style: GoogleFonts.comfortaa(
                    fontSize: 35,
                  ),
                ),
                TextSpan(
                  text: 'NFT\t'.tr,
                  style: GoogleFonts.comfortaa(
                      fontSize: 35, fontWeight: FontWeight.w900),
                )
              ]),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Find NFT and compare them to thousands of others'.tr,
              style: GoogleFonts.comfortaa(
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Transform.rotate(
                  angle: 50,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Image.asset('assets/images/download.jpeg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Transform.rotate(
                  angle: 13,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Image.asset('assets/images/download (1).jpeg',
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Transform.rotate(
              angle: 6.5,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset('assets/images/images.jpeg',
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: CircleAvatar(
                    radius: 25,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.arrow_back_outlined,
                        size: 30,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(DashboardScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Get Started'.tr,
                          style: GoogleFonts.comfortaa(
                            fontSize: 15,
                          ),
                        ),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
