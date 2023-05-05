// ignore_for_file: must_be_immutable

import 'package:dogdom_app/widget/follow_button.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/my_size.dart';
class CustomListTile extends StatelessWidget {
  CustomListTile({required this.image,required this.name,required this.subText,this.subTitle,this.height = 45,this.width = 45,this.richListTile = false,this.getFun,this.btnText = "Follow",this.clickedText = "Unfollow",Key? key}) : super(key: key);
  String image;
  String name;
  String? subTitle;
  bool subText;
  double? height;
  double? width;
  bool richListTile;
  VoidCallback? getFun;
  String? btnText;
  String? clickedText;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: getFun,
            child: Row(
              children: [
                Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(image,),fit: BoxFit.cover,
                    )
                    ),
                  ),
                SizedBox(width: MySize.scaleFactorWidth * 5,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,style: TextStyle(
                      fontSize: MySize.size16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor,
                    ),),
                    richListTile ? SizedBox(height: MySize.scaleFactorHeight * 5): Container(),
                    subText ? Text(subTitle!,style: TextStyle(
                        fontSize: MySize.size12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor.withOpacity(0.4)
                    ),): Container(),
                  ],
                ),
              ],
            ),
          ),
         FollowButton(
           text: btnText!,
           clicked: clickedText!,
         )
        ],
    );
  }
}
