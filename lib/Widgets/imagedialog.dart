import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget ImageDialog() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          width: Get.width * 0.7,
          height: Get.height * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
              image: AssetImage("assets/demo.jpg"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        SizedBox(height: 16),
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Demo pait is here',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              'size: 12x23 \npaint: water color',
              style: TextStyle(),
            )),
      ],
    ),
  );
}
