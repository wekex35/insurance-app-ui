import 'package:flutter/material.dart';
import 'package:thrifty/utils/theme_color.dart';

class BorderedTextView extends StatelessWidget {
  final double cardHeight;
  final double cardWidth;

  final double iconHeigth;
  final Color cardColor;
  final Color iconColor;
  final Color fontColor;
  final icon;
  final String text;
  final double textSize;
  final bool isShowIcon;
  final double padding;
  BorderedTextView({
    this.padding = 0,
    this.isShowIcon = false,
    @required this.fontColor,
    this.cardHeight,
    this.cardWidth,
    this.iconHeigth,
    this.cardColor = ThemeColor.primaryColorLight,
    this.iconColor = ThemeColor.primaryColorLight,
    this.icon = Icons.local_hospital,
    this.text = "TextTitle",
    this.textSize = 8,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: cardWidth,
      height : cardHeight,
      decoration: BoxDecoration(
        color: cardColor.withAlpha(5),
        borderRadius: BorderRadius.all(
          Radius.circular(7),          
        ),
        border: Border.all(
          color: fontColor.withAlpha(120)
        )

      ),
      child: Container(
        margin: const EdgeInsets.fromLTRB(5,2,5,2),
        padding: EdgeInsets.all(padding),
        child: Row(
          children: <Widget>[
            isShowIcon ? Icon(
          icon,
          color: iconColor,
          size: iconHeigth,
        ):Container(),
         isShowIcon ? Spacer() : Container(), 
          
            Text(
              text,
              style : TextStyle(
                color: fontColor,
                fontSize: textSize,
              )
            ),
          ],
        ),
        /*  */
      ),
    );
  }
}
