import 'package:dogdom_app/utils/my_size.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
class PostItem extends StatelessWidget {
   const PostItem({Key? key, required this.image, this.number}) : super(key: key);
  final String image;
  final String? number;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SizedBox(
        height: MySize.scaleFactorHeight * 25,
        width: MySize.scaleFactorWidth * 80,
        child: Row(
          children: [
            ImageIcon(
              AssetImage(image), color: AppColors.blackColor.withOpacity(0.4),),
            SizedBox(width: MySize.scaleFactorWidth * 5,),
            Text(number!, style: TextStyle(
                fontSize: MySize.size15,
                fontWeight: FontWeight.w400,
                color: AppColors.blackColor.withOpacity(0.4)
            ),)
          ],
        ),
      );
  }
}
