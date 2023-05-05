// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_constant.dart';
import '../utils/my_size.dart';
class CustomShare extends StatelessWidget {
   CustomShare({Key? key,required this.share}) : super(key: key);
  String share;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SizedBox(width: MySize.scaleFactorWidth * 80, child: Row(
      children: [
        InkWell(
          onTap: () {},
          child: SizedBox(
            height: MySize.size28,
            width: MySize.size28,
            child: Image.asset(
              AppConstant.shareIcon,
              color: AppColors.blackColor.withOpacity(0.4),
            ),
          ),
        ),
        SizedBox(width: MySize.scaleFactorWidth * 4,),
        Text(
          share,
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

