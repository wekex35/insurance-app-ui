import 'package:flutter/material.dart';
import 'package:thrifty/screens/subscription_details/tab_screens/coverage_screen.dart';
import 'package:thrifty/screens/subscription_details/tab_screens/plan_suggestions.dart';
import 'package:thrifty/utils/theme_color.dart';

import 'tab_screens/contributions_screen.dart';
import 'tab_screens/descritpion_screen.dart';
import 'tab_screens/premium_info.dart';

class SubscriptionDetailsMain extends StatefulWidget {
  @override
  _SubscriptionDetailsMainState createState() =>
      _SubscriptionDetailsMainState();
}

class _SubscriptionDetailsMainState extends State<SubscriptionDetailsMain>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Hero(
              tag: "account_holder",
              child: Text(
                "Medicare Platinum",
                style: TextStyle(
                    color: ThemeColor.textColorDark.withAlpha(150),
                    fontSize: 18),
              ),
            ),
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: ThemeColor.textColorDark,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            backgroundColor: Colors.white,
            centerTitle: true,
            bottom: TabBar(
                unselectedLabelColor:
                    ThemeColor.textColorLigthGray.withAlpha(200),
                indicatorColor: ThemeColor.primaryColorLight,
                labelColor: ThemeColor.primaryColorLight,
                tabs: [
                  Tab(
                    icon: Icon(Icons.attach_money),
                  ),
                  Tab(
                    icon: Icon(Icons.list),
                  ),
                  Tab(
                    icon: Icon(Icons.payment),
                  ),
                  Tab(
                    icon: Icon(Icons.favorite),
                  ),
                  Tab(
                    icon: Icon(Icons.verified_user),
                  ),
                ]),
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return TabBarView(
                children: <Widget>[
                  PremiumInfo(),
                  DescriptionScreen(),
                  ContributionScreen(),
                  CoverageScreen(),
                  PlanSuggestions(),
                ],
              );
            },
          ),
        ));
  }
}
