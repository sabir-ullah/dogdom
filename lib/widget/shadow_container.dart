import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/my_size.dart';
class ShadowContainer extends StatelessWidget {
  const ShadowContainer({Key? key, required this.icon, required this.text}) : super(key: key);
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SizedBox(
      height: MySize.scaleFactorHeight * 45,
      width: MySize.scaleFactorWidth * 60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(icon,height: MySize.scaleFactorHeight * 22,width: MySize.scaleFactorWidth * 20,),
          SizedBox(height: MySize.scaleFactorHeight * 3,),
          Text(text,style: TextStyle(
            fontSize: MySize.size12,
            fontWeight: FontWeight.w400,
            color: AppColors.blackColor,

          ),)
        ],
      ),
    );
  }
}
