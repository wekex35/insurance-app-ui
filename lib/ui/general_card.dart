import 'package:flutter/material.dart';

class GeneralCard extends StatelessWidget {
    final double width;
  final double height;
  final Widget child;
  GeneralCard({
      this.width,
      this.height,
      this.child,
  });
  @override
  Widget build(BuildContext context) {
     return Container(        
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      child: child,    
    );
  }
}