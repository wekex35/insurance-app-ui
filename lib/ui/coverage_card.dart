import 'package:flutter/material.dart';
import 'package:thrifty/utils/theme_color.dart';

class CoverageCard extends StatelessWidget {
  final double cardHeight;
  final double iconHeigth;
  final Color cardColor;
  final Color iconColor;
  final icon;
  final bool isShowLock;
  CoverageCard({
    this.cardHeight,
    this.iconHeigth,
    this.isShowLock = false,
    this.cardColor = ThemeColor.primaryColorLight,
    this.iconColor = ThemeColor.primaryColorLight,
    this.icon = Icons.local_hospital,

  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
          width: cardHeight,
          height: cardHeight,
          decoration: BoxDecoration(
            color: cardColor.withAlpha(30),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Container(
            margin: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: iconColor,
              size: iconHeigth,
            ),
          ),
        ),
        isShowLock ? Positioned(
          top: cardHeight*0.1,
          right: cardHeight*0.1,
          child: Icon(Icons.lock,color: Colors.deepOrangeAccent[200],))
          : Container()
      ],
    );
  }
}
