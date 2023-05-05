// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_constant.dart';
import '../utils/my_size.dart';
class CustomLike extends StatefulWidget {
   CustomLike({Key? key,required this.likes,this.width}) : super(key: key);
  int likes;
  double? width = MySize.scaleFactorWidth * 80;
  @override
  State<CustomLike> createState() => _CustomLikeState();
}

class _CustomLikeState extends State<CustomLike> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SizedBox(
        width: widget.width,
        child: Row(
        children: [
            InkWell(
              onTap: () {
                setState(() {
                  isLike = !isLike;
                });
              },
              child: SizedBox(
                height: MySize.size28,
                width: MySize.size28,
                child: Image.asset(
                  AppConstant.likeIcon,
                  color: isLike
                      ? AppColors.blueColor
                      : AppColors.blackColor.withOpacity(0.4),
                ),
              ),
            ),
            SizedBox(width: MySize.scaleFactorWidth * 4,),
            Text(
              isLike ? ( widget.likes = widget.likes + 1).toString() : ( widget.likes = widget.likes - 1).toString() ,
              style: TextStyle(
                  fontSize: MySize.size15,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blackColor.withOpacity(0.4)
          ),
          ),
        ],
      )
    );
  }
}
