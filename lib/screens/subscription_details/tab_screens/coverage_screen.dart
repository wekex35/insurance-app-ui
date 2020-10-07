import 'package:flutter/material.dart';
import 'package:thrifty/ui/coverage_card.dart';
import 'package:thrifty/ui/section_header.dart';
import 'package:thrifty/utils/test_data.dart';
import 'package:thrifty/utils/theme_color.dart';

class CoverageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final height = constraints.maxHeight;
        final width = constraints.maxWidth;

        return Container(
         
          height: height,
          child: ListView(
             padding: EdgeInsets.all(15),
            children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SectionHeader(leftTitle: "Coverages",),
            ),
              GridView.count(
                physics: ScrollPhysics(), // to disable GridView's scrolling
      shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 3 / 4.3,
                children: coverageTitle.map<Widget>((e) {
                 
                  return Column(
                    children: <Widget>[
                      Container(
                        height: height * 0.24,
                        child: CoverageCard(
                          isShowLock: !e['active'],
                          cardHeight: height * 0.24,
                          icon: e['icon'],
                          iconHeigth: height * 0.12,
                          iconColor: e['active']
                              ? ThemeColor.primaryColorLight
                              : ThemeColor.textColorLigthGray,
                          cardColor: e['active']
                              ? ThemeColor.primaryColorLight
                              : ThemeColor.textColorLigthGray,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          e['title'],
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                      )
                    ],
                  );
                }).toList(),
              )
            ],
          ),
        );
      },
    );
  }
}
