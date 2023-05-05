import 'package:dogdom_app/utils/my_size.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
class TextComponent extends StatelessWidget {
   const TextComponent({Key? key, required this.titleText, required this.text}) : super(key: key);
  final String titleText;
  final String text;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SizedBox(
      height: MySize.scaleFactorHeight * 80,
      width: MySize.screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titleText,style: TextStyle(
            fontSize: MySize.size24,
            fontWeight: FontWeight.w600,
            color: AppColors.blackColor,
          ),),
          SizedBox(height: MySize.scaleFactorHeight * 8,),
          TextField(
            decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(
                  fontSize: MySize.size14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blackColor.withOpacity(0.4),
              ),
              fillColor: Colors.transparent,
              isDense: true,
              border: InputBorder.none,

            )
          ),
        ],
      ),
    );
  }
}
