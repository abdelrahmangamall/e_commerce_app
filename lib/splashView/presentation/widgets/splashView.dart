import 'package:e_commerce_app/splashView/presentation/widgets/splashBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constats.dart';

class splashView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: KMainColor[500],
 body: splashBody(),
   );
  }
}