import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  double calculateContainerWidth(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= Get.width * 0.75) {
      return Get.width * 0.8;
    } else if (screenWidth >= Get.width * 0.5) {
      return Get.width * 0.7;
    } else if (screenWidth >= Get.width * 0.2) {
      return Get.width * 0.3;
    } else {
      return screenWidth;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // width: calculateContainerWidth(context),
        height: Get.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/aboutme.jpg"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Text(
              "About Me",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              """ ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
      molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
      numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
      optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis
      obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam
      nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,
      tenetur error, harum nesciunt ipsum debitis quas aliqui""",
              style: TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
