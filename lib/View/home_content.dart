import 'package:artfulspot/Widgets/imagedialog.dart';
import 'package:artfulspot/Widgets/zoomable_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  List<String> imageUrls = [
    "assets/demo.jpg",
    "assets/demo.jpg",
    "assets/demo.jpg",
    "assets/demo.jpg",
    "assets/demo.jpg",
    "assets/demo.jpg",
    "assets/demo.jpg",
    "assets/demo.jpg",
    "assets/demo.jpg",
    "assets/demo.jpg",
    "assets/demo.jpg",
    "assets/demo.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: calculateContainerWidth(context),
      // color: Colors.amber,
      height: MediaQuery.of(context).size.width < 600
          ? Get.height * 0.9
          : Get.height,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: GridView.builder(
          // padding: EdgeInsets.all(20.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: calculateCrossAxisCount(context),
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 15.0,
              mainAxisExtent: 400),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.dialog(
                  AlertDialog(
                    backgroundColor: Color(0xfffefeff),
                    title: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                          )),
                    ),
                    content: ImageDialog(),
                    actions: [],
                  ),
                );
              },
              child: SizedBox(
                // height: Get.height * 0.3,
                child: Column(
                  children: [
                    MyZoomableImage(),
                    SizedBox(
                      height: 50,
                      // width: Get.width * 0.07,
                      child: Text(
                        "Demo paint is here",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  double calculateContainerWidth(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= Get.width * 0.75) {
      return Get.width * 0.75;
    } else if (screenWidth >= Get.width * 0.5) {
      return Get.width * 0.5;
    } else if (screenWidth >= Get.width * 0.2) {
      return Get.width * 0.2;
    } else {
      return screenWidth;
    }
  }

  int calculateCrossAxisCount(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= 1200) {
      return 3;
    } else if (screenWidth >= 800) {
      return 2;
    } else if (screenWidth >= 600) {
      return 1;
    } else {
      return 1;
    }
  }
}
