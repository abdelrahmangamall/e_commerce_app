import 'package:e_commerce_app/onBoarding/presentation/widgets/pageViewItem.dart';
import 'package:flutter/cupertino.dart';

class customPageView extends StatelessWidget{
  @override
  final  PageController? pageController;

  const customPageView({super.key, @required this.pageController});
  Widget build(BuildContext context) {
   return PageView(
     controller: pageController,
     children:[
       pageViewItem(
         image: 'assets/images/onboarding1.png',
         title: 'E Shoping',
         subtitle: 'Explore top organic fruits & grab them'),
       pageViewItem(
         image: 'assets/images/onboarding2.png',
         title: 'Delivery on the way',
         subtitle: 'Get your order by speed delivery'),
       pageViewItem(
         image: 'assets/images/onboarding3.png',
         title: 'Delivery arrived',
         subtitle: 'Order is arrived at your place'),
     ]
   );
  }

}