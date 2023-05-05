import 'package:dogdom_app/utils/my_size.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
// ignore: must_be_immutable
class AboutTextWidget extends StatelessWidget {
   AboutTextWidget({Key? key,required this.ontap, required this.text,this.isPadding = false,this.setting = false,this.btnText}) : super(key: key);
  final String text;
  bool setting;
  bool isPadding;
  String? btnText;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return InkWell(
        onTap: ontap,
    child: Container(
      height: MySize.scaleFactorHeight * 55,
      width: MySize.screenWidth,
      color: AppColors.whiteColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: isPadding ? MySize.scaleFactorHeight * 15 : MySize.scaleFactorHeight * 2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(text,style: TextStyle(
              fontSize: MySize.size16,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor,
            ),),
            Row(
              children: [
                setting ? Text(btnText!,style: TextStyle(
                  fontSize: MySize.size14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blackColor.withOpacity(0.25)
                ),) : Container(),
                InkWell(
                  onTap: (){},
                  child: Icon(Icons.arrow_forward_ios,size: MySize.scaleFactorHeight * 15,color: AppColors.blackColor.withOpacity(0.25),),
                ),
              ],
            )
          ],
        ),
      ),
    ),
    );
  }
}
