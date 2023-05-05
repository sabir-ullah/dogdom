import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/my_size.dart';
class TextFieldWidget extends StatelessWidget {
   const TextFieldWidget({Key? key,  this.hintText = "Send the Sample", this.prefixIcon = Icons.search, this.suffixIcon = Icons.keyboard_voice, this.filledColor = AppColors.greyLight, this.borderRadius = 20}) : super(key: key);
 final String? hintText;
 final IconData? prefixIcon;
 final IconData? suffixIcon;
 final Color? filledColor;
 final double? borderRadius;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: MySize.size14,
            fontWeight: FontWeight.w400,
            color: AppColors.blackColor.withOpacity(0.25),
          ),
          prefixIcon: Icon(prefixIcon,color: AppColors.blackColor.withOpacity(0.25),size: MySize.size25,),
        suffixIcon: Icon(suffixIcon,color: AppColors.blackColor.withOpacity(0.55),size: MySize.size25,),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          borderSide: const BorderSide(color: Colors.transparent)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: const BorderSide(color: Colors.transparent)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: const BorderSide(color: Colors.transparent)
        ),
        fillColor: filledColor,
          isDense: true,
        ),
    );
  }
}
