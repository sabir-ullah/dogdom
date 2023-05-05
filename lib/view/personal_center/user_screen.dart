import 'package:dogdom_app/utils/app_colors.dart';
import 'package:dogdom_app/utils/app_constant.dart';
import 'package:dogdom_app/utils/my_size.dart';
import 'package:dogdom_app/widget/custom_like.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/post_model.dart';
import '../../widget/custom_comment.dart';
import '../../widget/custom_share.dart';
import '../../widget/textbtn_widget.dart';
class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool clicked = false;
  List<PostModel> postItem = [
    PostModel(profileImage: AppConstant.circle_view1, name: "Kate Winslet", postText: "Isn't five-month-old Teddy cute? 😏 😏", postImage: AppConstant.circle_post1, likes: 8618, comments: "148", shares: "5,233",subTitle: "Golden Retriever · Fayetteville"),
    PostModel(profileImage: AppConstant.circle_view1, name: "Kate Winslet", postText: "It's a joy to work with dogs. Life is great.", postImage: AppConstant.user_post1, likes: 278, comments: "88", shares: "48",subTitle: "Golden Retriever · Fayetteville"),
    PostModel(profileImage: AppConstant.circle_view1, name: "Miranda", postText: "Does your dog bite?", postImage: AppConstant.user_post2, likes: 5233, comments: "168", shares: "5,233",subTitle: "Golden Retriever · Fayetteville"),
    PostModel(profileImage: AppConstant.list_img5, name: "Angela", postText: "A dog is the only kind of love that money can buy.", postImage: AppConstant.huntin_postImg, likes: 186, comments: "68", shares: "108",subTitle: "Golden Retriever · Fayetteville"),
    PostModel(profileImage: AppConstant.mira_cover, name: "Christine", postText: "Among the many small animals, I like the dog the most.", postImage: AppConstant.user_post3, likes: 278, comments: "88", shares: "48",subTitle: "Golden Retriever · Fayetteville"),
  ];

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: MySize.scaleFactorHeight * 200,
                  width: MySize.screenWidth,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.blackColor.withOpacity(0.6),
                        AppColors.blackColor.withOpacity(0.0),
                      ]
                    ),
                    image: const DecorationImage(
                      image: AssetImage(AppConstant.user_cover),fit: BoxFit.cover
                    )
                  ),),
                Padding(
                  padding: EdgeInsets.all(MySize.size15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: (){
                              Get.back();
                              }
                            ,child: Icon(Icons.arrow_back_ios_rounded,color: AppColors.whiteColor,size: MySize.scaleFactorHeight * 18,)),
                        Row(
                          children: [
                            Icon(Icons.mode_edit,color: AppColors.whiteColor,size: MySize.scaleFactorHeight * 18,),
                            SizedBox(width: MySize.scaleFactorWidth * 10,),
                            Icon(Icons.qr_code,color: AppColors.whiteColor,size: MySize.scaleFactorHeight * 18,),
                            SizedBox(width: MySize.scaleFactorWidth * 10,),
                            Icon(Icons.more_vert,color: AppColors.whiteColor,size: MySize.scaleFactorHeight * 18,),
                          ],
                        )
                      ],
                    ),
                ),
                Positioned(
                    top: MySize.screenHeight * 0.2,
                    right: MySize.scaleFactorHeight * 20,
                    child: Container(
                  height: MySize.scaleFactorHeight * 90,
                  width: MySize.scaleFactorWidth * 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.whiteColor,width: MySize.scaleFactorWidth * 3),
                    image: const DecorationImage(
                      image: AssetImage(AppConstant.circle_view1),fit: BoxFit.fitHeight
                    )
                  ),
                ))
              ],
            ),
            Padding(
              padding: EdgeInsets.all(MySize.size15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Kate Winslet",style: TextStyle(
                    fontSize: MySize.size24,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackColor,
                  ),),
                  SizedBox(height: MySize.scaleFactorHeight * 10,),
                  Row(
                    children: [
                      textWidget("9868", "Followers"),
                      SizedBox(width: MySize.scaleFactorWidth * 20,),
                      textWidget("686", "Following"),
                    ],
                  ),
                  SizedBox(height: MySize.scaleFactorHeight * 10,),
                  Text("A dog is the only thing that loves you more than you love yourself.",style: TextStyle(
                    fontSize: MySize.size14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackColor.withOpacity(0.7),
                  ),),
                  SizedBox(
                    height: MySize.scaleFactorHeight * 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("My pet",style: TextStyle(
                          fontSize: MySize.size14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor,
                        ),),
                        Row(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.centerRight,
                              children: [
                                Container(
                                  height: MySize.scaleFactorHeight * 30,
                                  width: MySize.scaleFactorWidth * 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: AppColors.whiteColor,width: 2),
                                    image: const DecorationImage(
                                      image: AssetImage(AppConstant.huntin_profile),fit: BoxFit.cover,
                                    )
                                  ),
                                ),
                                Positioned(
                                  left: MySize.scaleFactorHeight * 17,
                                  child: Container(
                                  height: MySize.scaleFactorHeight * 30,
                                  width: MySize.scaleFactorWidth * 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: AppColors.whiteColor,width: 2),
                                      image: const DecorationImage(
                                        image: AssetImage(AppConstant.circle_img3),fit: BoxFit.cover,
                                      )
                                  ),
                                ),)
                              ],
                            ),
                            SizedBox(width: MySize.scaleFactorWidth * 20,),
                            Container(
                              height: MySize.scaleFactorHeight * 30,
                              width: MySize.scaleFactorWidth * 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppColors.blackColor.withOpacity(0.1),width: 2),
                                  ),
                                child: Icon(Icons.add,size: MySize.scaleFactorHeight * 14,color: AppColors.blackColor.withOpacity(0.4),)
                              ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                    height: MySize.scaleFactorHeight * 40,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.blackColor.withOpacity(0.05),
                            blurRadius: 0,
                            spreadRadius: 0,
                            offset:  const Offset(0,0.5),
                          )
                        ]
                      ),
                    child: Row(
                      children: [
                       TextBTN(text:"Dynamic",),
                       TextBTN(text:"Answer",),
                       TextBTN(text:"Atricle",),
                       TextBTN(text:"Video",),
                        TextBTN(text:"Dynamic",),
                        TextBTN(text:"Answer",),
                        TextBTN(text:"Atricle",),
                        TextBTN(text:"Video",),
                      ],
                    ),
                  ),
                  ),
                  ListView.separated(
                    itemCount: postItem.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context,indedx)=>SizedBox(height: MySize.scaleFactorHeight * 8,),
                    itemBuilder: (context, index){
                      return Container(
                         //height: MySize.scaleFactorHeight * 400,
                          width: MySize.screenWidth,
                          padding: EdgeInsets.all(MySize.size5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: MySize.scaleFactorHeight * 40,
                                width: MySize.screenWidth,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: MySize.scaleFactorHeight * 30,
                                      backgroundImage:AssetImage(postItem[index].profileImage),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(postItem[index].name,style: TextStyle(
                                          fontSize: MySize.size14,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.blackColor,

                                        ),),
                                        SizedBox(height: MySize.scaleFactorHeight * 4,),
                                        Text(postItem[index].subTitle!,style: TextStyle(
                                          fontSize: MySize.size12,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.blackColor.withOpacity(0.4),

                                        ),),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: MySize.scaleFactorHeight * 8,),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 10.0),
                                child: Text(postItem[index].postText,style: TextStyle(
                                  fontSize: MySize.size15,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.blackColor.withOpacity(0.7),
                                ),),
                              ),
                              SizedBox(height: MySize.scaleFactorHeight * 10,),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 8),
                                  child: Image.asset(postItem[index].postImage,height: MySize.scaleFactorHeight * 220, width: MySize.screenWidth,fit: BoxFit.cover,)),
                              SizedBox(height: MySize.scaleFactorHeight * 10,),
                              SizedBox(width: MySize.scaleFactorWidth * 30,),
                              SizedBox(
                                height: MySize.scaleFactorHeight * 30,
                                width: MySize.screenWidth,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomLike(likes: postItem[index].likes),
                                      CustomComment(comments: postItem[index].comments),
                                      CustomShare(share: postItem[index].shares),
                                      SizedBox(width: MySize.scaleFactorWidth * 30,),
                                      InkWell(onTap: (){},child: ImageIcon(const AssetImage(AppConstant.moreIcon),color: AppColors.blackColor.withOpacity(0.4),))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                      );
                    },
                  ),
                ],
              ),
            )
          ],),
        ),
      ),
    );
  }

  Widget textWidget(String number,String text)=>Row(
    children: [
      Text(number,style: TextStyle(
          fontSize: MySize.size16,
          fontWeight: FontWeight.w400,
          color: AppColors.blackColor
      ),),
      SizedBox(width: MySize.scaleFactorWidth * 5,),
      Text(text,style: TextStyle(
        fontSize: MySize.scaleFactorHeight * 13,
        fontWeight: FontWeight.w400,
        color: AppColors.blackColor.withOpacity(0.4),
      ),)
    ],
  );

}
