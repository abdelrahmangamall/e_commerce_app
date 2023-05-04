import 'package:e_commerce_app/core/utils/sizeConfig.dart';
import 'package:flutter/cupertino.dart';

class horizentalSpace extends StatelessWidget{
  @override
  final double value;
  const horizentalSpace(this.value);

  Widget build(BuildContext context) {
    return SizedBox(width: sizeConfig.defaultSize! * value);
  }

}

class verticalSpace extends StatelessWidget{
  @override
  final double value;
  const verticalSpace(this.value);

  Widget build(BuildContext context) {
    return SizedBox(height: sizeConfig.defaultSize! * value);
  }

}