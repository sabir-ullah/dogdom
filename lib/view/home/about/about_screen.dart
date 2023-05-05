import 'package:dogdom_app/utils/app_constant.dart';
import 'package:dogdom_app/utils/my_size.dart';
import 'package:dogdom_app/view/home/about/settings_screen.dart';
import 'package:dogdom_app/widget/about_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';
class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Padding(
          padding: EdgeInsets.all(MySize.size15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MySize.scaleFactorHeight * 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back_ios_rounded,color:AppColors.blackColor,size: MySize.scaleFactorHeight * 20,),
                  ),
                  Text("About Dogdom",style: TextStyle(fontSize: MySize.size17,fontWeight: FontWeight.w500,color: AppColors.blackColor),),
                  InkWell(
                    onTap: (){
                      Get.to(()=>const SettingScreen());
                    },
                    child: Icon(Icons.add,color:AppColors.blackColor,size: MySize.scaleFactorHeight * 20,),
                  )
                ],
              ),
              SizedBox(height: MySize.scaleFactorHeight * 30,),
              SizedBox(
                height: MySize.scaleFactorHeight * 120,
                width: MySize.screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: MySize.scaleFactorHeight * 70,
                      width: MySize.scaleFactorWidth * 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 15),
                      ),
                      child: Image.asset(AppConstant.dogdom_logo),
                    ),
                    SizedBox(height: MySize.scaleFactorHeight * 13,),
                    Text("Dogdom Version 6.0.5",style: TextStyle(
                      fontSize: MySize.size14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackColor.withOpacity(0.7)
                    ),),

                  ],
                ),
              ),
              SizedBox(height: MySize.scaleFactorHeight * 30,),
              AboutTextWidget(
                text: "To Score",
                ontap: () {},
              ),
              AboutTextWidget(
                text: "Function is introduced",
                ontap: () {},
              ),
              AboutTextWidget(
                text: "Q&A",
                ontap: () {},
              ),
              AboutTextWidget(
                text: "Privacy policy",
                ontap: () {},
              ),
              AboutTextWidget(
                text: "Feedback",
                ontap: () {},
              ),
              AboutTextWidget(
                text: "Version update",
                ontap: () {},
              ),
              SizedBox(height: MySize.scaleFactorHeight * 120,),
              SizedBox(
                height: MySize.scaleFactorHeight * 85,
                width: MySize.screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("《Dogdom User Agreement》",style: TextStyle(
                      fontSize: MySize.size12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackColor.withOpacity(0.85),
                    ),),
                    SizedBox(height: MySize.scaleFactorHeight * 12,),
                    Text("Dogdom All Rights Reserved",style: TextStyle(fontSize: MySize.size12,fontWeight: FontWeight.w400,color: AppColors.blackColor.withOpacity(0.25)),),
                    Text("Copyright © 2014-2021 Dogdom All Rights Reserved",style: TextStyle(fontSize: MySize.size12,fontWeight: FontWeight.w400,color: AppColors.blackColor.withOpacity(0.25)),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
