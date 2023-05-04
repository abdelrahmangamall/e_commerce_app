import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/constats.dart';
import 'package:e_commerce_app/core/utils/sizeConfig.dart';

class customIndicator extends StatelessWidget{
  @override
  final double points;
  const customIndicator({super.key, required this.points});

  Widget build(BuildContext context) {
   return Positioned(
     left:sizeConfig.defaultSize! * 10,
     right:sizeConfig.defaultSize! * 10,
     bottom: sizeConfig.defaultSize! * 22,
     child: DotsIndicator(
       decorator: DotsDecorator(
         color: Colors.transparent ,
         activeColor: KMainColor[500],
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(5),
           side: BorderSide(color: KMainColor),
         ),
       ),
       dotsCount: 3,
       position: points,
     ),
   );
  }

}