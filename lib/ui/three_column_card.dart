import 'package:flutter/material.dart';
import 'package:thrifty/utils/theme_color.dart';
class ThreeColumnCard extends StatelessWidget {
   final Widget child;
   final String middleTitle;
   final String middleSubTitle;
   final String endTitle;
   final String ensSubTitle;
   final String endSubTitle;
   final double size;
  final Color mtColor;
   final Color msColor;
   final Color etColor;
   final Color esColor;
  ThreeColumnCard({
   this.child,
   this.middleTitle = "middleTitle",
   this.middleSubTitle = "middleSubTitle",
   this.endTitle = "endTitle",
   this.ensSubTitle = "ensSubTitle",
   this.endSubTitle = "endSubTitle",
   this.size = 50,
   this.mtColor,
   this.msColor = ThemeColor.textColorLigthGray,
  this.etColor,
  this.esColor = ThemeColor.textColorLigthGray,
  });
  @override
  Widget build(BuildContext context) {
      titleWidget(name, value,  tColor,sColor) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: tColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(height: 4.0),
              Text(
                value,
                style: TextStyle(color: sColor, 
                fontSize: 13,
                fontWeight: FontWeight.bold
                ),
              ),
            ],
          );
        }

    return Container(
      child: Row(
        children: <Widget>[
          child == null ? Container():
          Container(
            margin: const EdgeInsets.only(right : 8.0),
            height : size,
            width: size,
            child: child,
          ),
          titleWidget(middleTitle, middleSubTitle, mtColor,msColor),
          Spacer(),
          titleWidget(endTitle, endSubTitle, etColor,esColor)
        ],
      ),
    );
  }
}