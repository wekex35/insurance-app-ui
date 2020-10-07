import 'package:flutter/material.dart';
import 'package:thrifty/ui/general_card.dart';
import 'package:thrifty/ui/section_header.dart';
import 'package:thrifty/utils/test_data.dart';
import 'package:thrifty/utils/theme_color.dart';

class DescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return ListView(
          padding: EdgeInsets.all(15),
          children: descriptionData.map((e) {
            return Column(

              children: <Widget>[
                descriptionData.indexOf(e) %3==0?
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,10,0,3),
                  child: SectionHeader(leftTitle: "Descriptions",),
                )
                :Container(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: GeneralCard(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                e['title'],
                                style: TextStyle(
                                    fontSize: 18,
                                    color: ThemeColor.primaryColorLight),
                              ),
                            ),
                            Text(
                              e['description'],
                              style: TextStyle(),
                            )
                          ]),
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        );
      },
    );
  }
}
