import 'package:e_commerce_app/auth/presentation/pages/login/loginViewPage.dart';
import 'package:e_commerce_app/core/customButton.dart';
import 'package:e_commerce_app/core/utils/sizeConfig.dart';
import 'package:e_commerce_app/onBoarding/presentation/widgets/customInicator.dart';
import 'package:e_commerce_app/onBoarding/presentation/widgets/customPageView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class onBoardingBody extends StatefulWidget{

  @override
  State<onBoardingBody> createState() => _onBoardingBodyState();
}

class _onBoardingBodyState extends State<onBoardingBody> {
  PageController? pageController;
  @override
  void initState(){
    pageController=PageController(initialPage: 0)..addListener(() {
      setState(() {

      });
    });
        super.initState();
  }
  Widget build(BuildContext context) {
    double n =  pageController!.hasClients ? pageController!.page as double : 0;
    return Stack(
    children: [
      Visibility(
        visible: n == 2 ? false : true ,
        child: Positioned(
            top: sizeConfig.defaultSize! *10 ,
            right: 40,
            child:GestureDetector(
              onTap:() {
                pageController!.jumpToPage(2);
              //  Get.to( ()=> pageController!.jumpToPage(2));
                 // transition: Transition.rightToLeft,
                //  duration: Duration(milliseconds: 50),);
              },
              child: Text('Skip',
                style: TextStyle(
                  fontSize: 16,
                ),),
            ),
        ),
      ),
//skip
      customPageView(pageController: pageController,),
      customIndicator(points: n),
      Positioned(
          left:sizeConfig.defaultSize! * 10,
          right:sizeConfig.defaultSize! * 10,
          bottom: sizeConfig.defaultSize! * 10,
          child:
       customBotton(onTap: (){  if(n == 2){
         Get.to( ()=> loginViewPage(), transition: Transition.rightToLeft,
           duration: Duration(milliseconds: 50),);
       }else{
         pageController!.nextPage(duration: Duration(milliseconds: 10),
             curve: Curves.easeIn);

       }
       },
         name: n == 2 ? 'Get Start' : 'Next',)), //nextButton
    ],
  );

  }
}