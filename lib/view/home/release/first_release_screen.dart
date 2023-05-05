import 'package:dogdom_app/utils/app_colors.dart';
import 'package:dogdom_app/utils/app_constant.dart';
import 'package:dogdom_app/utils/my_size.dart';
import 'package:dogdom_app/widget/text_component.dart';
import 'package:flutter/material.dart';

import '../../../model/release_model.dart';
// ignore: must_be_immutable
class FirstRelease extends StatelessWidget {
   FirstRelease({Key? key}) : super(key: key);
  List<ReleaseModel> releaseItem = [
    ReleaseModel(image: AppConstant.articleView, lable: "Article"),
    ReleaseModel(image: AppConstant.dynamicView, lable: "Dynamic"),
    ReleaseModel(image: AppConstant.videoView, lable: "Video"),
  ];

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Padding(
          padding: EdgeInsets.all(MySize.size15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: MySize.scaleFactorHeight * 20.0),
                child: const TextComponent(titleText: "Release something new", text: "What you're thinking right now..."),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 20.0),
                child: SizedBox(
                  height: MySize.scaleFactorHeight * 120,
                  width: MySize.screenWidth * 1,
                  child: ListView.separated(
                    itemCount: releaseItem.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (_,index)=>SizedBox(width: MySize.screenWidth * 0.15,),
                    itemBuilder: (context,index){
                        return SizedBox(
                          height: MySize.scaleFactorHeight * 90,
                          width: MySize.scaleFactorWidth * 65,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                  height: MySize.scaleFactorHeight * 62,
                                  width: MySize.scaleFactorWidth * 62,
                                  child: Image.asset(releaseItem[index].image)),
                              SizedBox(height: MySize.scaleFactorHeight * 8,),
                              Text(releaseItem[index].lable,style: TextStyle(
                                fontSize: MySize.size14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackColor.withOpacity(0.7)
                              ),)
                            ],
                          ),
                        );
                    }, ),
                ),
              ),
              //SizedBox(height: MySize.scaleFactorHeight * 20,),

            ],
          ),
        )
      ),
    );
  }
}
