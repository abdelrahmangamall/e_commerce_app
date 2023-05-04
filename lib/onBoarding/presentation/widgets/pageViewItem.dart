import 'package:e_commerce_app/core/spacerWidget.dart';
import 'package:e_commerce_app/core/utils/sizeConfig.dart';
import 'package:flutter/cupertino.dart';

class pageViewItem extends StatelessWidget{
  String? title,subtitle,image;
  pageViewItem({ required this.image,required this.title,required this.subtitle});
  @override
  Widget build(BuildContext context) {
  return Column(
    children: [
     const verticalSpace(20),
      SizedBox(height: sizeConfig.defaultSize! *20,
          child: Image.asset(image!)),
      const verticalSpace(.5),
      Text(title!,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
        textAlign: TextAlign.left,
      ),
      const verticalSpace(1),
      Text(subtitle!,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.left,
      ),
    ],
  );
  }
}