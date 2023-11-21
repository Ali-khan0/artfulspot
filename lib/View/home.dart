import 'package:artfulspot/Controllers/homepage_controller.dart';
import 'package:artfulspot/View/aboutus_content.dart';
import 'package:artfulspot/View/contactus_content.dart';
import 'package:artfulspot/View/home_content.dart';
import 'package:artfulspot/Widgets/drawer.dart';
import 'package:artfulspot/Widgets/sidebar_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageController homePageController = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width < 600
          ? AppBar(
              backgroundColor: Colors.transparent,
              scrolledUnderElevation: 0,
              elevation: 0,
              title: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image(
                  image: AssetImage("assets/artfulspotlogo.png"),
                  height: 70,
                ),
              ),
              actions: [
                Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        // Open the drawer when the image is tapped
                        Scaffold.of(context).openEndDrawer();
                      },
                      child: Image(
                        image: AssetImage("assets/menu.png"),
                        height: 30,
                      ),
                    );
                  },
                ),
                SizedBox(
                  width: 40,
                )
              ],
            )
          : null,
      endDrawer: CustomDrawer(homePageController: homePageController,),
      backgroundColor: Color(0xfffefeff),
      body: Column(
        children: [
          // Visibility(
          //   visible: MediaQuery.of(context).size.width < 600,
          //   child: AppBar(
          //     // Customize your AppBar as needed
          //     title: Text("Artsful"),
          //     // Additional AppBar properties...
          //   ),
          // ),
          Container(
            height: Get.height,
            width: Get.width,
            child: Row(
              mainAxisAlignment: MediaQuery.of(context).size.width > 600
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Visibility(
                  visible: MediaQuery.of(context).size.width > 600,
                  child: Container(
                    // color: Colors.purple,
                    height: MediaQuery.of(context).size.width < 600
                        ? Get.height * 0.9
                        : Get.height,
                    width: Get.width * 0.25,
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Get.height * 0.2,
                          child: Image(
                            image: AssetImage(
                              "assets/artfulspotlogo.png",
                            ),
                            width: Get.width * 0.18,
                          ),
                          // color: Colors.red,
                        ),
                        Container(
                          height: Get.height * 0.3,
                          child: Column(
                            children: [
                              InkWell(
                                  enableFeedback: false,
                                  hoverColor: Colors.transparent,
                                  onTap: () {
                                    homePageController.updateCIndex(0);
                                  },
                                  child: HoverText(
                                      "HOME",
                                      0,
                                      homePageController.currentIndex.value,
                                      homePageController)),
                              InkWell(
                                  enableFeedback: false,
                                  hoverColor: Colors.transparent,
                                  onTap: () {
                                    homePageController.updateCIndex(1);
                                  },
                                  child: HoverText(
                                      "ABOUT ME",
                                      1,
                                      homePageController.currentIndex.value,
                                      homePageController)),
                              InkWell(
                                  enableFeedback: false,
                                  hoverColor: Colors.transparent,
                                  onTap: () {
                                    homePageController.updateCIndex(2);
                                  },
                                  child: HoverText(
                                      "CONTACT US",
                                      2,
                                      homePageController.currentIndex.value,
                                      homePageController)),
                            ],
                          ),
                        ),
                        Container(
                          // color: Colors.red,
                          height: Get.height * 0.2,
                          width: Get.width * 0.15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                image: AssetImage("assets/fb.png"),
                                width: 20,
                              ),
                              Image(
                                image: AssetImage("assets/yt.png"),
                                width: 20,
                              ),
                              Image(
                                image: AssetImage("assets/whatsapp.png"),
                                width: 20,
                              ),
                              Image(
                                image: AssetImage("assets/tiktok.png"),
                                width: 20,
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                  ),
                ),
                Obx(
                  () => Container(
                      // color: Colors.red,
                      height: MediaQuery.of(context).size.width < 600
                          ? Get.height * 0.9
                          : Get.height,
                      // width: Get.width * 0.75,
                      child: homePageController.currentIndex.value == 0
                          ? HomeContent()
                          : homePageController.currentIndex.value == 1
                              ? AboutUs()
                              : ContactUs()),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
