import 'package:e_commerce_app/core/spacerWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/customTextField.dart';

class completeInfiItem extends StatelessWidget{
  @override
  final String text;
  final TextInputType inputType;
  final int maxLines;
  const completeInfiItem({super.key, required this.text,
    required this.inputType, required this.maxLines});
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text(text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),),
        verticalSpace(2),
        customTextField(
          inputType: inputType,
          maxLines: maxLines,)
      ],
    );
  }

}