import 'dart:ui';
import 'package:dogdom_app/utils/app_constant.dart';
import 'package:dogdom_app/utils/my_size.dart';
import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
class VideoCallScreen extends StatelessWidget {
  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Container(color: AppColors.whiteColor, child: SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Container(
        height: MySize.screenHeight,
        width: MySize.screenWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppConstant.video_call),fit: BoxFit.fill
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
        padding: EdgeInsets.all(MySize.size16),
        child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ImageIcon(
                  AssetImage(AppConstant.narrow_icon),color: AppColors.whiteColor,
                ),
                Container(
                  height: MySize.scaleFactorHeight * 144,
                  width: MySize.scaleFactorWidth * 98,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.whiteColor, width: 2),
                  borderRadius: BorderRadius.circular(MySize.size8),
                  image: const DecorationImage(
                    image: AssetImage(AppConstant.caller_img),fit: BoxFit.fill,
                  )
                  ),
                )
              ],
            ),),
           ClipRRect(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 2,sigmaY: 2),child:
            Container(
              height: MySize.scaleFactorHeight * 224,
              width: MySize.screenWidth,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.blackColor.withOpacity(0.0),
                    AppColors.blackColor.withOpacity(0.092),
                    AppColors.blackColor.withOpacity(0.18),
                  ]
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MySize.scaleFactorHeight * 20,),
                  Text("02:30:00",style: TextStyle(
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.whiteColor
                  ),),
                  SizedBox(height: MySize.scaleFactorHeight * 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      videoComponent("Switch Voice", AppConstant.switch_icon, AppColors.blackColor.withOpacity(0.4),(){}),
                      videoComponent("Hang up", AppConstant.call_icon, AppColors.redColor,(){}),
                      videoComponent("Switch Camera", AppConstant.camera_icon, AppColors.blackColor.withOpacity(0.4),(){}),
                    ],
                  )
                ],
              ),
            )

              ),
            ),
          ],
        ),
        )
      ),
    ),
    );
  }
  Widget videoComponent(String text, String icon,Color color,VoidCallback ontap){
    return InkWell(
        onTap: ontap,
        child: SizedBox(
      height: MySize.scaleFactorHeight * 100,
      width: MySize.scaleFactorWidth * 112,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(radius: MySize.size40,backgroundColor: color,child: Image.asset(icon,height: MySize.size32,width: MySize.size32,),),
          Text(text,style: TextStyle(fontSize: MySize.size14,color: AppColors.whiteColor,fontWeight: FontWeight.w400),)
        ],
      )
    )

    );
  }
}
