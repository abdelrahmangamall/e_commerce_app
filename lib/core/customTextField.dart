import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customTextField extends StatelessWidget{
  @override
  final TextInputType inputType;
  final Widget? suffexIcon;
  final ValueSetter? onSaved;
  final ValueSetter? onChanged;
  final int? maxLines;
  const customTextField({super.key, required this.inputType,
    this.suffexIcon, this.onSaved,
    this.onChanged, this.maxLines});

  Widget build(BuildContext context) {
    return TextFormField(
     keyboardType:inputType ,
     onChanged:onChanged,
     onSaved: onSaved,
      maxLines:maxLines ,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.black26,
          )
        ),
      ),
    );
  }

}