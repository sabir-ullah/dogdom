import 'package:dogdom_app/utils/my_size.dart';
import 'package:dogdom_app/view/auth/log_in.dart';
import 'package:dogdom_app/widget/about_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.greyLight,
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: MySize.scaleFactorHeight * 60,
                    color: AppColors.whiteColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: AppColors.blackColor,
                              size: MySize.scaleFactorHeight * 20,
                            ),
                          ),
                          Text(
                            "Settings",
                            style: TextStyle(
                                fontSize: MySize.size17,
                                fontWeight: FontWeight.w500,
                                color: AppColors.blackColor),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.add,
                              color: AppColors.blackColor,
                              size: MySize.scaleFactorHeight * 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: MySize.scaleFactorHeight * 10,),
                  AboutTextWidget(text: "Account and Security",isPadding: true, ontap: () {  },),
                  AboutTextWidget(text: "Dark mode",setting: true,btnText: "Closed",isPadding: true, ontap: () {  },),
                  SizedBox(height: MySize.scaleFactorHeight * 10,),
                  AboutTextWidget(text: "New message notification",isPadding: true, ontap: () {  },),
                  AboutTextWidget(text: "Privacy",isPadding: true, ontap: () {  },),
                  AboutTextWidget(text: "General",isPadding: true, ontap: () {  },),
                  SizedBox(height: MySize.scaleFactorHeight * 10,),
                  AboutTextWidget(text: "Help and Feedback",isPadding: true, ontap: () {  },),
                  AboutTextWidget(text: "About Dogdom",setting: true,btnText: "Version 6.0.5",isPadding: true, ontap: () {  },),

                  SizedBox(height: MySize.scaleFactorHeight * 10,),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      height: MySize.scaleFactorHeight * 55,
                      width: MySize.screenWidth,
                      color: AppColors.whiteColor,
                      child: Center(
                        child: Text("Switch Account",style: TextStyle(fontSize: MySize.size16,fontWeight: FontWeight.w400, color: AppColors.blackColor,),
                      ),
                    )
                    ),
                  ),
                  SizedBox(height: MySize.scaleFactorHeight * 1,),
                  InkWell(
                    onTap: (){
                      Get.offAll(()=>const LoginScreen());
                    },
                    child: Container(
                        height: MySize.scaleFactorHeight * 55,
                        width: MySize.screenWidth,
                        color: AppColors.whiteColor,
                        child: Center(
                          child: Text("Log out",style: TextStyle(fontSize: MySize.size16,fontWeight: FontWeight.w400, color: AppColors.primaryColor,),
                          ),
                        )
                    ),
                  ),
                ])));
  }
}
