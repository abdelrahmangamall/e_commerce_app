import 'package:e_commerce_app/onBoarding/presentation/widgets/onBoardingView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/utils/sizeConfig.dart';


class splashBody extends StatefulWidget{
  @override
  State<splashBody> createState() => _splashBodyState();
}

class _splashBodyState extends State<splashBody> with SingleTickerProviderStateMixin {

  AnimationController? animationController;
  Animation<double>? animation;
  @override
  void initState() {
    super.initState();
    animationController =AnimationController(vsync: this, duration: Duration(milliseconds: 400),);
    animation= Tween<double>(begin: 0.2 ,end: 1).animate(animationController!);
    animationController!.repeat(reverse: true);
    getNextView();
  }
  @override
  void dispose(){
   animationController?.dispose();
   super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    sizeConfig().init(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
           children: [
             SizedBox(height: 100,),
             Center(
               child: FadeTransition(
                 opacity: animation!,
                 child: Text('Fruit Market',
                 style: TextStyle(
                   fontSize: 50,
                  fontWeight: FontWeight.bold,
                   color: Colors.white,
                 ),),
               ),
             ),
             Image.asset('assets/images/splash_view_image.png',
             ),
           ],
      ),
    );
  }

  void getNextView() {
   Future.delayed(Duration(seconds: 3,), (){
     Get.to(()=> onBoardingView(),transition: Transition.fade);
   },);
  }
}