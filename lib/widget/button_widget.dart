import 'package:dogdom_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/my_size.dart';
class ButtonWidget extends StatelessWidget {
   const ButtonWidget({Key? key,this.borderRadius = 50,this.getFun, required this.btnText}) : super(key: key);
  final String btnText;
  final VoidCallback? getFun;
  final double? borderRadius;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return InkWell(
      onTap: getFun,
      child: Container(
        height: MySize.scaleFactorHeight * 60,
        width: MySize.screenWidth,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        child: Center(
          child: Text(btnText,style: TextStyle(
              fontSize: MySize.size18,
              fontWeight: FontWeight.w500,
              color: AppColors.whiteColor
          ),),
        ),
      ),
    );
  }
}
