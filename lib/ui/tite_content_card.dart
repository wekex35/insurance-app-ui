import 'package:flutter/material.dart';
import 'package:thrifty/utils/theme_color.dart';

class TitleContentCard extends StatelessWidget {
  final String header;
  final String content;
   final double width;
  final double height;
  final Function() onPressedReadMore;
  final Widget child;
  TitleContentCard(
      { this.header,
      this.content,
      this.child,
      this.width,
      this.height,
      this.onPressedReadMore});
  @override
  Widget build(BuildContext context) {
    return Container(    
          padding: const EdgeInsets.all(8.0),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            child == null ? Container() : child,
            Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text(
                       header,style: TextStyle(
                       color : ThemeColor.textColorDark.withAlpha(150),
                       fontWeight: FontWeight.bold
                       
                       ),
                       ),
                       SizedBox(height : 10),
                       Flexible(
                          child: Text(
                           content,
                           maxLines: 4,
                           overflow: TextOverflow.ellipsis,
                           style: TextStyle(                            
                         color : ThemeColor.textColorLigthGray,
                         fontSize: 12
                         ),),
                       ),
                        SizedBox(height : 10),
                       InkWell(
                         onTap: onPressedReadMore,
                         child: Text(
                         "Read More..",style: TextStyle(
                         color : ThemeColor.primaryColorLight,
                         // fontWeight: FontWeight.bold,
                         fontSize: 13
                         ),
                         ),
                       ),
                   ],
                 ),
               ),
            ),
          ],
        ));
  }
}
