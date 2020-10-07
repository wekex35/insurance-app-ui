import 'package:flutter/material.dart';
import 'package:thrifty/utils/theme_color.dart';

class ShawdowButton extends StatelessWidget {
  final double width;
  final Color buttonColor;
  final Color shawdowColor;
  final String text;
  final Color textColor;
  final Function() onPressed;
  ShawdowButton({
    @required this.width,
    this.buttonColor = ThemeColor.primaryColorLight,
    this.shawdowColor = ThemeColor.primaryColorLight,
    this.text = "Button",
    this.textColor = Colors.white,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
          child: InkWell(
        onTap: onPressed,
            child: Container(
          padding: EdgeInsets.all(15),
          width: width / 1.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: buttonColor,
              boxShadow: [
                BoxShadow(
                  color: shawdowColor.withAlpha(90),
                  blurRadius: 20.0,
                  spreadRadius: 0.0,
                  offset: Offset(
                    3.0,
                    10.0,
                  ),
                ),
              ]
              ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
