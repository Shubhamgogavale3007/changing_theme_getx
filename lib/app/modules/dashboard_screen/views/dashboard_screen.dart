import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/dashboard_controller.dart';

class DashboardScreen extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(

        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover the new\nNFT collection'.tr,
                style: GoogleFonts.comfortaa(
                    fontSize: 35,

                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Search items, collections ...'.tr,
                    hintStyle: GoogleFonts.comfortaa(),
                    prefixIcon: Icon(
                      Icons.search,

                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '102, 40\$'.tr,
                                style: GoogleFonts.comfortaa(
                                    fontSize: 20, fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'AVAILABLE CREDIT'.tr,
                                style: GoogleFonts.comfortaa(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          Icon(Icons.account_balance_rounded)
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(DashboardScreen());
                            },
                            child: Text(
                              'Borrow'.tr,
                              style: GoogleFonts.comfortaa(
                                fontSize: 15,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 180,
                    width: 180,
                    child: Card(
                      elevation: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Borrowed'.tr,
                                      style: GoogleFonts.comfortaa(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '5000 \$',
                                      style: GoogleFonts.comfortaa(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            SizedBox(
                              height: 40,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.to(DashboardScreen());
                                },
                                child: Text(
                                  'Repay'.tr,
                                  style: GoogleFonts.comfortaa(
                                    fontSize: 15,

                                  ),
                                ),
                                style: ElevatedButton.styleFrom(

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 180,
                    width: 180,
                    child: Card(
                      elevation: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Transfered'.tr,
                                      style: GoogleFonts.comfortaa(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'AVAILABLE : \$500',
                                      style: GoogleFonts.comfortaa(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            SizedBox(
                              height: 40,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.to(DashboardScreen());
                                },
                                child: Text(
                                  'Withdraw'.tr,
                                  style: GoogleFonts.comfortaa(
                                    fontSize: 15,

                                  ),
                                ),
                                style: ElevatedButton.styleFrom(

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('What Are NFTs?'.tr,style: GoogleFonts.comfortaa(
                              fontSize: 18,
                              fontWeight: FontWeight.w800),),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                  'A NFT (non-fungible token) is data added to a file that creates a unique signature. It can be an image file, a song, a tweet, a text posted on a website, a physical item, and various other digital formats.This means that someone can own a digital file that its marked with code to differentiate it from any digital replicas.'.tr,style: GoogleFonts.comfortaa(
                                  fontSize: 15,
                                ),),
                            ],
                          ),
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
