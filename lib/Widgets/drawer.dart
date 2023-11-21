import 'package:artfulspot/Widgets/sidebar_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatefulWidget {
  final homePageController;
  const CustomDrawer({
    Key? key,
    required this.homePageController,
  }) : super(key: key);
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Your drawer content goes here
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Container(
                // height: Get.height * 0.2,
                child: Image(
                  image: AssetImage(
                    "assets/artfulspotlogo.png",
                  ),
                  // width: Get.width * 0.18,
                ),
                // color: Colors.red,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.pink[50],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  enableFeedback: false,
                  hoverColor: Colors.transparent,
                  onTap: () {
                    widget.homePageController.updateCIndex(0);
                    Get.back();
                  },
                  child: HoverText(
                      "HOME",
                      0,
                      widget.homePageController.currentIndex.value,
                      widget.homePageController)),
              InkWell(
                  enableFeedback: false,
                  hoverColor: Colors.transparent,
                  onTap: () {
                    widget.homePageController.updateCIndex(1);
                    Get.back();
                  },
                  child: HoverText(
                      "ABOUT ME",
                      1,
                      widget.homePageController.currentIndex.value,
                      widget.homePageController)),
              InkWell(
                  enableFeedback: false,
                  hoverColor: Colors.transparent,
                  onTap: () {
                    widget.homePageController.updateCIndex(2);
                    Get.back();
                  },
                  child: HoverText(
                      "CONTACT US",
                      2,
                      widget.homePageController.currentIndex.value,
                      widget.homePageController)),
            ],
          ),
        ],
      ),
    );
  }
}
