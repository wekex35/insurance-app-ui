import 'package:flutter/material.dart';
import 'package:thrifty/utils/theme_color.dart';

class NewsCard extends StatelessWidget {
  final String header;
  final String content;
  final String image;
  final Color imageBackground;
  final double width;
  final double height;
  final Function() onPressedReadMore;
  NewsCard(
      {this.header,
      this.content,
      this.image,
      this.imageBackground,
      this.width,
      this.height,
      this.onPressedReadMore});
  @override
  Widget build(BuildContext context) {
    return Container(        
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: <Widget>[
            Container(
              height: height,
              decoration: BoxDecoration(
                color: imageBackground,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(10.0),
              child: Image.asset(
                image,
              ),
            ),
            Expanded(
               child: Padding(
                padding: const EdgeInsets.symmetric(vertical : 15.0),
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
