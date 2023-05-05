import 'package:dogdom_app/utils/app_colors.dart';
import 'package:dogdom_app/utils/my_size.dart';
import 'package:dogdom_app/view/message/message_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/search_model.dart';
import '../../utils/app_constant.dart';
import '../home/about/about_screen.dart';

// ignore: must_be_immutable
class NoticeCenter extends StatelessWidget {
   NoticeCenter({Key? key}) : super(key: key);
  List<SearchModel> messageItems = [
    SearchModel(text: "Love dog little assistant", answer: "Congratulations! Your article was recommended by dog lovers to feature", image: AppConstant.circle_view1,time: "02/07"),
    SearchModel(text: "The system informs", answer: "We will spare no effort to protect the ecology of the community and severely crack down on violations of regulations", image: AppConstant.informIcon,time: "05/18"),
    SearchModel(text: "Dogdom", answer: "Your March report has been generated, click to view.", image: AppConstant.dogdomIcon,time: "11 days ago"),
  ];

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          body: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.all(MySize.size15),
                  child: Column(children: [
                    SizedBox(
                      height: MySize.scaleFactorHeight * 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Message",
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
                              size: MySize.size30,
                            ),
                            SizedBox(
                              width: MySize.scaleFactorWidth * 25,
                            ),
                            InkWell(
                              onTap:(){},child:Icon(
                              Icons.search,
                              color: AppColors.blackColor,
                              size: MySize.size30,
                            )
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(onTap:(){},child:noticeCenter(AppConstant.priseIcon, "Praise"),),
                        InkWell(
                            onTap: (){Get.to(()=>const MessageScreen());},
                            child: noticeCenter(AppConstant.message, "Messages")),
                        InkWell(onTap:(){},child:noticeCenter(AppConstant.commentsIcon, "Comments"), ),
                        InkWell(onTap:(){},child:noticeCenter(AppConstant.helpIcon, "Help"),),
                      ],
                    ),
                    SizedBox(height: MySize.scaleFactorHeight * 20,),

                    ListView.separated(
                      itemCount: messageItems.length,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      separatorBuilder: (context,index)=>SizedBox(height: MySize.scaleFactorHeight * 5,),
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            index == 2 ? Get.to(()=>const AboutScreen()) : null;
                          },
                          child: SizedBox(
                            height: MySize.scaleFactorHeight * 100,
                            width: MySize.screenWidth,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: MySize.scaleFactorHeight * 30,
                                  backgroundImage:AssetImage(messageItems[index].image),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(messageItems[index].text,style: TextStyle(
                                          fontSize: MySize.size16,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.blackColor,
                                        ),),
                                        SizedBox(width: MySize.scaleFactorWidth * 10,),
                                        index == 0 ? Container(
                                          height: MySize.scaleFactorHeight * 20,
                                          width: MySize.scaleFactorWidth * 50,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 2),
                                            color: AppColors.orangeColor.withOpacity(0.3),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 4.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                ImageIcon(const AssetImage(AppConstant.officialIcon),color: AppColors.orangeColor,size: MySize.scaleFactorHeight * 10,),
                                                Text("Official",style: TextStyle(
                                                  fontSize: MySize.size10,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.orangeColor
                                                ),)
                                              ],
                                            ),
                                          ),
                                        ): Container(),
                                      ],
                                    ),
                                    SizedBox(height: MySize.scaleFactorHeight * 5,),
                                    SizedBox(
                                      width: MySize.screenWidth * 0.6,
                                      child: Text(messageItems[index].answer,style: TextStyle(
                                        fontSize: MySize.size14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.blackColor.withOpacity(0.4),

                                      ),),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: MySize.scaleFactorHeight * 15,
                                  width: MySize.scaleFactorWidth * 60,
                                  child: Text(messageItems[index].time!,style: TextStyle(
                                      fontSize: MySize.size14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.blackColor.withOpacity(0.4)
                                  ),),
                                ),

                              ],
                            ),
                          ),
                        );
                      },)
                  ])))),
    );
  }
  Widget noticeCenter(String icon,String text){
    return SizedBox(
      height: MySize.scaleFactorHeight * 100,
      width: MySize.scaleFactorWidth * 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MySize.scaleFactorHeight * 45,
            width: MySize.scaleFactorWidth * 45,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(icon),
          ),
          SizedBox(height: MySize.scaleFactorHeight * 8,),
          Text(text,style: TextStyle(
            fontSize: MySize.size14,
            fontWeight: FontWeight.w400,
            color: AppColors.blackColor.withOpacity(0.7),
          ),),
        ],
      ),
    );
  }
}
