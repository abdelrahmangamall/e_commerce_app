import 'package:e_commerce_app/core/constats.dart';
import 'package:e_commerce_app/core/utils/sizeConfig.dart';
import 'package:flutter/material.dart';

class customBotton extends StatelessWidget{
  String? name;
  customBotton({required this.onTap,required this.name});
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: KMainColor[500],
          borderRadius:BorderRadius.circular(15),
        ),
        width: sizeConfig.screenWidth,
        height: 60,
        child: Center(
          child: Text('$name',

          ),
        ),
      ),
    );
  }
}
class customBottonWithIcon extends StatelessWidget{
 final String? text;
 final IconData? iconData;
 final Color? color;
 final VoidCallback? onTap;
  customBottonWithIcon({required this.text,
    required this.iconData,
    required  this.color,required this.onTap});
  @override
  Widget build(BuildContext context) {
  return GestureDetector(
    onTap: onTap,
     child: Container(
      decoration: BoxDecoration(
      color:Colors.transparent,
      borderRadius:BorderRadius.circular(8),
        border: Border.all(
          color: Colors.black26,
        )
     ),
       width: sizeConfig.screenWidth,
       height: 60,
       child: Row(
           children: [
             Padding(
               padding: EdgeInsets.only(left: 8,right: 20),
               child: Icon(iconData,
               color: color,),
             ),
             Text('$text',
               style: TextStyle(
                 fontSize: 18,
               ),
             ),
           ],
       ),
     )
  );
  }
}
