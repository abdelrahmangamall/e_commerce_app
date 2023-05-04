import 'package:e_commerce_app/auth/presentation/pages/completeInformation/completeInfoItem.dart';
import 'package:e_commerce_app/core/customButton.dart';
import 'package:e_commerce_app/core/spacerWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class completeInfoBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(

      children:[Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            verticalSpace(4),
            completeInfiItem(text: 'Enter your name ',
                inputType: TextInputType.name, maxLines: 1) ,
            verticalSpace(4),
            completeInfiItem(text: 'Enter your phone number',
                inputType: TextInputType.phone, maxLines: 1),
            verticalSpace(4),
            completeInfiItem(text: 'Enter your address ',
                inputType: TextInputType.streetAddress, maxLines: 5),
            verticalSpace(4),
            Padding(

              padding: EdgeInsets.symmetric(horizontal: 80),
              child: customBotton(onTap: (){

              }, name: 'Login'),
            )
          ],
        ),
      ),
      ],
    );
  }

}