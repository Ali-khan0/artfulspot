import 'package:flutter/material.dart';

class MyZoomableImage extends StatefulWidget {
  @override
  _MyZoomableImageState createState() => _MyZoomableImageState();
}

class _MyZoomableImageState extends State<MyZoomableImage> {
  double scaleFactor = 1.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          scaleFactor = 1.05;
        });
      },
      onExit: (_) {
        setState(() {
          scaleFactor = 1.0;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: 350 * scaleFactor,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            image: AssetImage("assets/demo.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
