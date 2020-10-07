import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thrifty/utils/theme_color.dart';

class HomeTopCard extends StatelessWidget {
  final double height;
  final double width;
  final Function() onPressed;
  HomeTopCard({this.height = 200, this.width = 400, this.onPressed});
  @override
  Widget build(BuildContext context) {
    titleWidget(name, value) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            name,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: ThemeColor.textColorLigthGray,
                fontWeight: FontWeight.bold,
                fontSize: 12),
          ),
          Text(
            value,
            style: TextStyle(
                color: ThemeColor.textColorDark.withAlpha(80), fontSize: 25),
          ),
        ],
      );
    }

    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: width,
            margin: EdgeInsets.only(top: height * 0.03),
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffffffff),
                    ThemeColor.cardLight,
                  ]),
              boxShadow: [
                BoxShadow(
                  color: ThemeColor.textColorLigthGray.withAlpha(90),
                  blurRadius: 20.0,
                  spreadRadius: 0.0,
                  offset: Offset(
                    3.0,
                    10.0,
                  ),
                ),
              ],
              // color: Color[] Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Positioned(
          right: height * 0.02,
          top: height * 0.18,
          // alignment :Alignment.topRight,
          child: InkWell(
            onTap: onPressed,
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
                "HEALTCARE",
                style: TextStyle(color: ThemeColor.textColorLight),
              ),
            ),
          ),
        ),
        Positioned(
          left: height * 0.15,
          top: height * 0.16,
          child: InkWell(
            onTap: onPressed,
            child: Container(
              width: width * 0.9,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          "assets/images/profile.png",
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ), //
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "DAVID WELLINGTON",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color:
                                      ThemeColor.textColorDark.withAlpha(100),
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.verified_user,
                                  color: ThemeColor.primaryColorLight,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Hero(
                                  flightShuttleBuilder: (flightContext,
                                      animation,
                                      direction,
                                      fromContext,
                                      toContext) {
                                        
                                    return Text(
                                      "MEDICARE PLATINUM",
                                      style: TextStyle(
                                          color: ThemeColor.primaryColorDark,
                                          fontSize: 18),
                                    );
                                  },
                                  tag: "account_holder",
                                  child: Text(
                                    "MEDICARE PLATINUM",
                                    style: TextStyle(
                                        color: ThemeColor.primaryColorLight,
                                        fontSize: 9),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.11,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: titleWidget("POLICY NUMBER", "4152 1126")),
                      //
                      Expanded(
                          child:
                              titleWidget("PREMIUM AMOUNT DUE", "\$ 2,000 ")),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.11,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: titleWidget("SURRENDER VALUE", "\$ 2,000 ")),
                      // Spacer(),
                      Expanded(
                          child:
                              titleWidget("PREMIUM DUE DATE", "24 AUG 2018")),
                    ],
                  ),
                ],
              ),
            ),
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
