
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HoverText extends StatefulWidget {
  final String text;
  final int index;
  final int cindex;
  final controller;

  HoverText(this.text, this.index, this.cindex, this.controller);

  @override
  _HoverTextState createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        child: _buildText(),
      ),
    );
  }

  Widget _buildText() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: Get.width * 0.18,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => Stack(
                children: [
                  Text(
                    widget.text,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: _isHovered ? 20 : 17,
                    ),
                  ),
                  widget.controller.currentIndex == widget.index
                      ? Positioned(
                          bottom: 2,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: 50,
                            height: 5,
                            decoration: BoxDecoration(
                                color: Color(0xffefccbc),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                          ),
                        )
                      : Text("")
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black54,
            )
          ],
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
