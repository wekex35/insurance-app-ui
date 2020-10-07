import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'screens/splash/splash_main.dart';

void main() {
  runApp( DevicePreview(
    enabled: false,
    builder: (context) => MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
     
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashMain(),
    );
  }
}

