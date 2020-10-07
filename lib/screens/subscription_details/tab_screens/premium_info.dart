import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:thrifty/ui/boreder_textview.dart';
import 'package:thrifty/ui/coverage_card.dart';
import 'package:thrifty/ui/general_card.dart';
import 'package:thrifty/ui/section_header.dart';
import 'package:thrifty/ui/shawdow_button.dart';
import 'package:thrifty/ui/tite_content_card.dart';
import 'package:thrifty/utils/theme_color.dart';

class PremiumInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final height = constraints.maxHeight;
        final width = constraints.maxWidth;

        titleWidget(name, value, color) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: ThemeColor.textColorLigthGray,
                    fontWeight: FontWeight.bold,
                    fontSize: 8),
              ),
              SizedBox(height: 4.0),
              Text(
                value,
                style: TextStyle(color: color, fontSize: 15),
              ),
            ],
          );
        }

        return SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              SectionHeader(
                leftTitle: "Premium Information",
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: GeneralCard(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Account Holder",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ThemeColor.textColorLigthGray,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
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
                                    Row(children: [
                                      Text(
                                        "DAVID WELLINGTON",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: ThemeColor.textColorDark
                                                .withAlpha(100),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 5),
                                      BorderedTextView(
                                        cardColor: Colors.redAccent,
                                        fontColor:
                                            Colors.redAccent.withAlpha(120),
                                        text: "PERSONAL",
                                      )
                                    ]),
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
                                        Text(
                                          "MEDICARE PLATINUM",
                                          style: TextStyle(
                                              color:
                                                  ThemeColor.primaryColorLight,
                                              fontSize: 9),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ]),
                  ),
                ),
              ),
              GeneralCard(
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  width: width,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "PREMIUM AMOUNT PLANNED",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ThemeColor.textColorLigthGray,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          child: BorderedTextView(
                            icon: Icons.attach_money,
                            cardWidth: width,
                            cardColor: ThemeColor.primaryColorLight,
                            fontColor: ThemeColor.primaryColorDark,
                            text: "42,000",
                            textSize: 20,
                            padding: 8,
                            isShowIcon: true,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(children: [
                            titleWidget(
                                "PREMIUM AMOUNT DUE", "\$ 24,0000", Colors.red),
                            Spacer(),
                            titleWidget("PREMIUM AMT DUE DATE", "24 AUG 2020",
                                ThemeColor.textColorDark),
                          ]),
                        ),
                        SizedBox(height: 10),
                        ShawdowButton(
                          width: width,
                          text: "MAKE A PAYMENT",
                        )
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: SectionHeader(
                  leftTitle: "Premium Change",
                ),
              ),
              GeneralCard(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.redAccent,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("\$1,500 decrease last year."),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 10),
                    child: Sparkline(
                      fallbackHeight: 80,
                      fallbackWidth: width,
                      data: [
                        1.0,
                        1.0,
                        1.0,
                        1.0,
                        1.0,
                        0.75,
                        0.5,
                        0.5,
                        0.5,
                        0.5,
                        0.25,
                        0.25,
                        0.5,
                        0.5
                      ],
                      fillMode: FillMode.below,
                      lineColor: ThemeColor.primaryColorLight,
                      fillGradient: new LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          ThemeColor.primaryColorLight.withAlpha(150),
                          ThemeColor.primaryColorLight.withAlpha(50)
                        ],
                      ),
                    ),
                  ),
                ],
              )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: SectionHeader(
                  leftTitle: "YTD Rewards Earned",
                ),
              ),
              TitleContentCard(
                height: height * 0.2,
                header: "LEVEL 1 : \$5 Premium Credit",
                content:
                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
                child: CoverageCard(
                  icon: Icons.favorite,
                  cardColor: Colors.deepOrangeAccent,
                  iconColor: Colors.deepOrangeAccent,
                ),
              )
            ],
          ),
        ));
      },
    );
  }
}
