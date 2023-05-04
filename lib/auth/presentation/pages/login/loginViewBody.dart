import 'package:e_commerce_app/auth/presentation/pages/completeInformation/completeInfoPage.dart';
import 'package:e_commerce_app/core/customButton.dart';
import 'package:e_commerce_app/core/spacerWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../core/constats.dart';


class loginViewBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 60,right: 60, top: 120,
          bottom:10 ),
          child: Image.asset('assets/images/logo.png'),
        ),
        Text('Fruit Market',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: KMainColor,
          ),),
        verticalSpace(12),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: customBottonWithIcon(text: 'login with Google',
                    iconData: FontAwesomeIcons.googlePlusG,
                    color: Colors.red[500],
                    onTap: (){

                      Get.to( ()=> completeInfoPage(),
                        transition: Transition.rightToLeft,
                        duration: Duration(milliseconds: 50),);
                    }),
              ),
            ),
            
         //   Flexible(
         //     flex: 1,
         //     child: Padding(
           //     padding: const EdgeInsets.all(8.0),
          //      child: customBottonWithIcon(
           //         text: 'login with ',
           //         iconData: FontAwesomeIcons.facebookF ,
           //         color: Colors.blue[600] ,
           //         onTap: (){
            //          Get.to( ()=> completeInfoPage(),
           //             transition: Transition.rightToLeft,
            //            duration: Duration(milliseconds: 50),);
           //         }),
            //  ),
          //  ),
          ],
        ),
      ],
    );
  }
}