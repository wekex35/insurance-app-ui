import 'package:flutter/material.dart';
import 'package:thrifty/models/plan_suggestion_model.dart';
import 'package:thrifty/ui/plan_suggestins_card.dart';
import 'package:thrifty/ui/section_header.dart';
import 'package:thrifty/utils/test_data.dart';
import 'package:thrifty/utils/theme_color.dart';

class PlanSuggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          child: ListView(
            padding: EdgeInsets.all(20.0),
            children: <Widget>[
              SectionHeader(
                leftTitle: "Insurance Plan Suggestions",
                leftFontSize: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  "Another plan suggestions based on your profile Information",
                  style: TextStyle(
                      fontSize: 12,
                      color: ThemeColor.textColorDark.withAlpha(150)),
                ),
              ),
              Column(
                children : planSuggestions.map<Widget>((e){
                  return Container(
                    margin: EdgeInsets.symmetric(vertical :8),
                    child: PlanSuggestionCard(PlanSuggestionModel.fromJson(e)));
                }).toList()
              )

            ],
          ),
        );
      },
    );
  }
}
