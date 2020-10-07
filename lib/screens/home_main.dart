import 'package:flutter/material.dart';
import 'package:thrifty/models/offers_model.dart';
import 'package:thrifty/ui/coverage_card.dart';
import 'package:thrifty/ui/home_top_card.dart';
import 'package:thrifty/ui/news_card.dart';
import 'package:thrifty/ui/offers_card.dart';
import 'package:thrifty/ui/section_header.dart';
import 'package:thrifty/utils/test_data.dart';
import 'package:thrifty/utils/theme_color.dart';

import 'subscription_details/subscription_details_main.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  List<OffersModel> offersData = new List();

  @override
  void initState() {
    super.initState();
    offersData = productOffers.map((e) => OffersModel.fromJson(e)).toList();
    _controller = AnimationController(vsync: this,);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    _appBar(){
      return   Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      )),
                  Spacer(),
                  Icon(
                    Icons.local_florist,
                    color: Colors.amber,
                    size: 25,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "thrifty",
                    style: TextStyle(
                        color: ThemeColor.textColorLight,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Spacer(),
                 
                      IconButton(
                      icon: Container(
                        width: 25,
                        child: Stack(
                   children :[Icon(
                          Icons.verified_user,
                          color: Colors.white,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                                                child: CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.deepOrange,),
                        )
                   ]
                 ),
                      ),
                      onPressed: () {}),
                      
                ],
              ),
            );
          
    }
    return Scaffold(
      backgroundColor: ThemeColor.primaryColorLight,
      body: SafeArea(
        child: Container(
          child: Column(children: [
            _appBar(),
            Flexible(
              child: SingleChildScrollView(
                child: Container(
                    height: height * 1.25,
                    child: Stack(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(top: height / 6),
                            color: ThemeColor.cardLight),
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Column(
                              // padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                              children: [
                                HomeTopCard(
                                  height: height / 3,
                                  width: width / 1.13,
                                  onPressed: (){
                                  
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=> SubscriptionDetailsMain()));
                                  },
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 25, 8, 8),
                                  child: SectionHeader(
                                    leftTitle: "Coverages",
                                  ),
                                ),
                                Container(
                                  height: height * 0.14,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: coverage.map((e){
                                      return  CoverageCard(
                                        cardHeight: height * 0.13,
                                        iconHeigth:  height * 0.07,
                                        icon: e,
                                      );
                                    }).toList(),
                                      ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 10, 8, 20),
                                  child: SectionHeader(
                                    leftTitle: "News and Updates",
                                    rigthTitle: "See More",
                                    onPressed: () {},
                                  ),
                                ),
                                NewsCard(
                                  header: "House Insurance Impact",
                                  content:
                                      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
                                  image: "assets/images/home.png",
                                  imageBackground: Colors.blue,
                                  width: width * 0.9,
                                  height: height * 0.2,
                                  onPressedReadMore: () {},
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 25, 8, 20),
                                  child: SectionHeader(
                                    leftTitle: "Product Offers",
                                    rigthTitle: "See All Offers",
                                    onPressed: () {},
                                  ),
                                ),
                                Container(
                                  height: height * 0.3,
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: offersData.map((e){
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: OffersCard(
                                            header: e.header,
                                            content: e.content,
                                            image: e.image,
                                            background: e.background,
                                            offers : e.offers,
                                            width: width * 0.8,
                                            height: height * 0.25,
                                            onPressedReadMore: () {},
                                          ),
                                        );
                                      }).toList(),)
                                      ),
                              ]),
                        )
                      ],
                    )),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
