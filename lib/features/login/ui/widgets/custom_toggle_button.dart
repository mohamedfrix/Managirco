import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomToggleButton extends StatefulWidget {
  CustomToggleButton({super.key, required this.width, required this.height, required this.isToggled});

  final double width;
  final double height;
  bool isToggled;

  @override
  _CustomToggleButtonState createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.isToggled = !widget.isToggled;
        setState(() {
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300), // Smooth animation
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: widget.isToggled ? Theme.of(context).primaryColor : Colors.white,
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 1.5
          )
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
              left: widget.isToggled ? (widget.width / 2) : 3, // Toggle position
              right: widget.isToggled ? 3 : (widget.width / 2),
              child: Container(
                height:widget.height,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.isToggled ? Colors.white : Theme.of(context).primaryColor ,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}