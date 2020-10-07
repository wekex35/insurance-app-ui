import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thrifty/utils/theme_color.dart';

class OffersCard extends StatelessWidget {
    final String header;
  final String content;
  final String image;
  final Color background;
  final double width;
  final double height;
  final String offers;
  final Function() onPressedReadMore;
  OffersCard(
      {this.header,
      this.content,
      this.image,
      this.background,
      this.width,
      this.height,
      this.onPressedReadMore, 
      this.offers});
  @override
  Widget build(BuildContext context) {
   

    return Stack(
      children: <Widget>[
       
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: width,
            
            height: height,
            decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
          ),
        ),
        Positioned(
          right: height * 0.00,
          top: height * 0.18,
          // alignment :Alignment.topRight,
          child: Container(
            //  margin: EdgeInsets.fromLTRB(15,6,20,6),
            padding: EdgeInsets.fromLTRB(15, 6, 20, 6),
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                )),
            child: Text(
              offers,
              style: TextStyle(color: ThemeColor.textColorLight),
            ),
          ),
        ),
        Container(
          width: width * 0.9,
          height: height,
          child: Row(
            children: <Widget>[
             Container(
               decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image,
                  )),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                )),
               height: height,
               width: width*0.3,
              
              ),
              SizedBox(
                width: 15,
              ), //
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                     SizedBox(
                      height: height*0.4,
                    ),
                    Text(
                      header,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: ThemeColor.textColorLight,
                          fontWeight: FontWeight.bold,
                          fontSize: 15                          
                        ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      content,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: ThemeColor.textColorLight,
                 fontSize: 12
                          
                          ),
                    ),
                     SizedBox(height : 10),
                InkWell(
                  onTap: onPressedReadMore,
                  child: Text(
                  "Read More..",style: TextStyle(
                  color : ThemeColor.textColorLight,
                  // fontWeight: FontWeight.bold,
                  fontSize: 13
                  ),
                  ),
                ),
               
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class HomeTopCardModel {
  String policyHolderName;
  String planName;
  String policyType;
  String policyNumber;
  String premiumAmountDue;
  String surrenderValue;
  String premiumDueDate;

  HomeTopCardModel(
      {this.planName,
      this.policyHolderName,
      this.policyNumber,
      this.policyType,
      this.premiumAmountDue,
      this.premiumDueDate,
      this.surrenderValue});
}
