import 'package:dogdom_app/utils/my_size.dart';
import 'package:dogdom_app/view/personal_center/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_constant.dart';
import 'followers_view.dart';
import 'following_view.dart';

class PersonalCenter extends StatelessWidget {
  const PersonalCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(MySize.size15),
                child: Column(children: [
                  SizedBox(
                    height: MySize.scaleFactorHeight * 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Personal",
                        style: TextStyle(
                          fontSize: MySize.size24,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blackColor,
                        ),
                      ),
                      Row(
                        children: [
                          ImageIcon(
                             const AssetImage(AppConstant.scanner),
                            color: AppColors.blackColor,
                            size: MySize.scaleFactorHeight * 30,
                          ),
                          SizedBox(
                            width: MySize.scaleFactorWidth * 12,
                          ),
                          const ImageIcon(AssetImage(AppConstant.setIcon),color: AppColors.blackColor,)
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 15,
                  ),
                  ListTile(
                    onTap: (){
                      Get.to(()=>const UserScreen());
                    },
                    contentPadding: const EdgeInsets.only(left: 0),
                    leading: Container(
                      height: MySize.scaleFactorHeight * 72,
                      width: MySize.scaleFactorWidth * 72,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                        image: AssetImage(AppConstant.circle_view1),fit: BoxFit.fitHeight,
                        )
                      ),
                    ),
                    title: Text("Kelly Goldsmith",style: TextStyle(
                      fontSize: MySize.size17,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor,
                    ),),
                    horizontalTitleGap: 0,
                    subtitle: Text("Golden Retriever · Mobile ",style: TextStyle(
                      fontSize: MySize.size12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackColor.withOpacity(0.4)
                    ),),
                    trailing: Icon(Icons.qr_code,color: AppColors.blackColor.withOpacity(0.4),),
                  ),
                  SizedBox(height: MySize.scaleFactorHeight * 20,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        personalCenter("98626", "Praise"),
                        personalCenter("369", "Dynamic"),
                        personalCenter("6869", "Share"),
                      ],
                    ),
                  ),
                  customLisTile(AppConstant.followerIcon, "Followers", "6848",(){Get.to(()=>FollowersView());}),
                  customLisTile(AppConstant.followingIcon, "Following", "826",(){Get.to(()=>FollowingView());}),
                  customLisTile(AppConstant.collectionIcon, "Collections", "264",(){}),
                  customLisTile(AppConstant.orderIcon, "Order", "18",(){}),
                  Container(
                    height: MySize.scaleFactorHeight * 55,
                    width: MySize.screenWidth,
                    padding: EdgeInsets.all(MySize.size15),
                    child: Row(
                      children: [
                        SizedBox(
                            height: MySize.scaleFactorHeight * 25,
                            width: MySize.scaleFactorWidth * 25,
                            child: Image.asset(AppConstant.darkIcon)),
                        SizedBox(width: MySize.scaleFactorWidth * 5,),
                        Text(
                          "Dark Mode",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor,
                              fontSize: MySize.size16),
                        ),
                      ],
                    ),
                  ),

                ]))));
  }
  Widget personalCenter(String number, String text){
    return SizedBox(
      height: MySize.scaleFactorHeight * 70,
      width: MySize.scaleFactorWidth * 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(number,style: TextStyle(
            fontSize: MySize.size20,
            fontWeight: FontWeight.w500,
            color:AppColors.blackColor
          ),),
          SizedBox(height: MySize.scaleFactorHeight * 4,),
          Text(text,style: TextStyle(
            fontSize: MySize.size14,
            fontWeight: FontWeight.w400,
            color: AppColors.blackColor.withOpacity(0.4),
          ),)
        ],
      ),
    );
  }

  Widget customLisTile(
    String icon,
    String text,
    String numbers,
      VoidCallback ontap
  ) {
    return InkWell(onTap: ontap,child: Container(
      height: MySize.scaleFactorHeight * 55,
      width: MySize.screenWidth,
      padding: EdgeInsets.all(MySize.size15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                  height: MySize.scaleFactorHeight * 25,
                  width: MySize.scaleFactorWidth * 25,
                  child: Image.asset(icon)),
              SizedBox(width: MySize.scaleFactorWidth * 5,),
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackColor,
                    fontSize: MySize.size16),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                numbers,
                style: TextStyle(
                  fontSize: MySize.size14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blackColor.withOpacity(0.25),
                ),
              ),
              SizedBox(
                width: MySize.scaleFactorWidth * 5,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColors.blackColor.withOpacity(0.25),
                size: MySize.scaleFactorHeight * 13,
              )
            ],
          ),
        ],
      ),
    ),
    );
  }

}
