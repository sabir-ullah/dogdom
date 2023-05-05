// ignore_for_file: must_be_immutable

import 'package:dogdom_app/utils/my_size.dart';
import 'package:dogdom_app/widget/follow_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../model/listTile_model.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_constant.dart';
class FollowersView extends StatelessWidget {
   FollowersView({Key? key}) : super(key: key);
  List<ListTileModel> messageItme = [
    ListTileModel(image: AppConstant.list_img1, name: "Black Marvin", comment: "Im a big fan of you", time: ""),
    ListTileModel(image: AppConstant.list_img2, name: "Nguyen Shane", comment: "There's somebody out there ...", time: ""),
    ListTileModel(image: AppConstant.list_img3, name: "Cooper Kristin", comment: "Life doesn't have to be perfect.", time: ""),
    ListTileModel(image: AppConstant.alexandra_profile, name: "Henry Arthur", comment: "A goal without a plan is just ...", time: ""),
    ListTileModel(image: AppConstant.list_img4, name: "Nguyen Shane", comment: "Hey there im here", time: ""),
    ListTileModel(image: AppConstant.list_img5, name: "Flores Juanita", comment: "Good relationship don't just ...", time: ""),
    ListTileModel(image: AppConstant.list_img6, name: "Williamson Darlene", comment: "Cease to struggle and you ...", time: ""),
    ListTileModel(image: AppConstant.list_img7, name: "Richards Aubrey", comment: "active always", time: ""),
   ListTileModel(image: AppConstant.list_img2, name: "Nguyen Shane", comment: "There's somebody out there ...", time: ""),
   ListTileModel(image: AppConstant.list_img3, name: "Cooper Kristin", comment: "Life doesn't have to be perfect.", time: ""),
   ListTileModel(image: AppConstant.alexandra_profile, name: "Henry Arthur", comment: "A goal without a plan is just ...", time: ""),
   ListTileModel(image: AppConstant.list_img4, name: "Nguyen Shane", comment: "Hey there im here", time: ""),
   ListTileModel(image: AppConstant.list_img5, name: "Flores Juanita", comment: "Good relationship don't just ...", time: ""),
   ListTileModel(image: AppConstant.list_img6, name: "Williamson Darlene", comment: "Cease to struggle and you ...", time: ""),
   ListTileModel(image: AppConstant.list_img7, name: "Richards Aubrey", comment: "active always", time: ""),
  ];

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Container(
      color: AppColors.greyLight,
      child: SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
        children: [

          Padding(padding: EdgeInsets.all(MySize.size15),
            child:Center(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(onTap: (){Get.back();},child: Icon(Icons.arrow_back_ios_new,color: AppColors.blackColor,size: MySize.size20,)),
                  Text("Followers",style: TextStyle(fontSize: MySize.size24,fontWeight: FontWeight.w600,color: AppColors.blackColor),),
                  SizedBox(width: MySize.scaleFactorWidth * 20),
              ]),),),


          ListView.separated(
            itemCount: messageItme.length,
            shrinkWrap: true,
            padding: EdgeInsets.all(MySize.size15),
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index)=>SizedBox(height: MySize.scaleFactorHeight * 10,),
            itemBuilder: (context, index){
              return InkWell(
                  onTap: (){

                  },
                  child: SizedBox(
                    height: MySize.scaleFactorHeight * 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(radius: MySize.scaleFactorHeight * 33,backgroundImage: AssetImage(messageItme[index].image),),
                        SizedBox(width: MySize.scaleFactorWidth * 10,),
                        Expanded(
                          child: Padding(
                          padding: EdgeInsets.only(top: MySize.scaleFactorHeight * 10.0),
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(messageItme[index].name,style: TextStyle(
                                fontSize: MySize.size16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.blackColor,
                              ),),
                              SizedBox(height: MySize.scaleFactorHeight * 10,),
                              Text(messageItme[index].comment,style: TextStyle(
                                fontSize: MySize.size14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackColor.withOpacity(0.4),
                              ),)
                            ],
                          ),
                        ),
                        ),
                        const FollowButton(text: "Following"),
                      ],
                    ),
                  ),
              );
            },
          )

      ],),
      ),
    )
      )
    );
  }
}
