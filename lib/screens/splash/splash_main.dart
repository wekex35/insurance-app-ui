import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:thrifty/ui/shawdow_button.dart';
import 'package:thrifty/utils/theme_color.dart';

import '../home_main.dart';

class SplashMain extends StatefulWidget {
  @override
  _SplashMainState createState() => _SplashMainState();
}

class _SplashMainState extends State<SplashMain>
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
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    
    return Scaffold(
      backgroundColor: ThemeColor.primaryColorLight,
      body: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: height - height / 2.3,
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height / 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.local_florist,
                        color: Colors.amber,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "thrifty",
                        style: TextStyle(
                            color: ThemeColor.textColorLight,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    "assets/images/home.png",
                    width: width / 2,
                  )
                ]),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: height / 12,
            child: Container(
              padding: EdgeInsets.only(top: height / 8),
              color: ThemeColor.cardLight,
              height: height / 2.2,
              width: width,
              child: Column(children: [
                Flexible(
                    child: Text(
                  'Not Only Cover Yourself, your lovely \n family as well !',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ThemeColor.textColorDark, fontSize: 18),
                )),
                SizedBox(
                  height: 15,
                ),
                Flexible(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Lorem Ipsum is simply dummy \n text of the printing and typesetting industry. Lorem Ipsum has',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: ThemeColor.textColorLigthGray, fontSize: 12),
                  ),
                )),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical : 30.0),
                 child: ShawdowButton(
                   width: width,
                   text: "Login In",  
                   onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (_) => HomeMain()));
                   },               
                   ),
               )
                ]),
            ),
          ),
        ),
      ]),
    );
  }
}
