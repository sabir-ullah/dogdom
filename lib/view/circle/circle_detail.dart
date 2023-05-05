
import 'dart:ui';

import 'package:dogdom_app/utils/app_constant.dart';
import 'package:dogdom_app/utils/my_size.dart';
import 'package:dogdom_app/view/home/home_article.dart';
import 'package:dogdom_app/view/home/search/search_screen.dart';
import 'package:dogdom_app/widget/custom_like.dart';
import 'package:dogdom_app/widget/shadow_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import '../../model/askQ_model.dart';
import '../../model/post_model.dart';
import '../../utils/app_colors.dart';
import '../../widget/custom_comment.dart';
import '../../widget/custom_share.dart';
class CircleDetail extends StatefulWidget {
  const CircleDetail({Key? key, required this.image, required this.text, required this.members}) : super(key: key);
 final String image;
 final String text;
 final String members;

  @override
  State<CircleDetail> createState() => _CircleDetailState();
}

class _CircleDetailState extends State<CircleDetail> {

  bool isClicked = false;
  List<PostModel> postItem = [
    PostModel(profileImage: AppConstant.cyrine_profile, name: "Cyarine", postText: "Does your dog bite?", postImage: AppConstant.circle_post1, likes: 5233, comments: "168", shares: "5,233",subTitle: "Golden Retriever · Mobile "),
    PostModel(profileImage: AppConstant.richard_profile, name: "Richard", postText: "Isn't such a tiny golden retriever cute? 😏 😏", postImage: AppConstant.circle_post5, likes: 8618, comments: "148", shares: "568",subTitle: "Labrador Peninsula · Atlanta "),
    PostModel(profileImage: AppConstant.list_img3, name: "Miranda", postText: "If you just because of its cute appearance, silly expression so love, please do not keep it.", postImage: AppConstant.mira_cover, likes: 8688, comments: "836", shares: "872",subTitle: "Golden Retriever · Mobile "),
    PostModel(profileImage: AppConstant.profile_img4, name: "Deborah", postText: "Dog son daily, record your growth.😊 😊", postImage: AppConstant.circle_post4, likes: 3168, comments: "236", shares: "98",subTitle: "Golden Retriever · Augusta"),
    PostModel(profileImage: AppConstant.tyler_profile, name: "Tyler Ellis", postText: "It's a joy to work with dogs. Life is great.", postImage: AppConstant.circle_post5, likes: 278, comments: "88", shares: "48",subTitle: "Golden Retriever · Fayetteville"),
  ];
  List<AskQModel> discussionItem = [
    AskQModel(question: "Healthy puppy body temperature is 38.5 degrees -39.5 degrees, normal?", profile: AppConstant.ernest_profile, name: "Ernest Guzman", answer: "A healthy puppy's body temperature ranges from 38.5 to 39.5 degrees, and is slightly higher in the afternoon. The temperature difference between day and night is generally less than 1 degree", likes: 113,comments: 113),
    AskQModel(question: "How can I stop my dog from picking up food?", profile: AppConstant.circle_img1, name: "Stanley Larson", answer: "When dogs go out, there will be a general situation, that is to liberate nature, free themselves, this time...", likes: 658,comments: 38),
    AskQModel(question: "Does dog appetite not good reason and ameliorate method?", profile: AppConstant.ernest_profile, name: "Arthur Barker", answer: "If your dog has a poor appetite, sometimes eat a little, sometimes gorge, sometimes not eat at all.", likes: 113,comments: 113),
  ];
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MySize.scaleFactorHeight * 263,
                width: MySize.screenWidth,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppConstant.circle_cover,),fit: BoxFit.cover,
                    )
                ),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 5,sigmaX: 5),
                child: Container(
                  color: AppColors.whiteColor.withOpacity(0.1),
                  padding: EdgeInsets.all(MySize.size18),
                 child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.arrow_back_ios,size: MySize.size20,color: AppColors.whiteColor,),
                            const Spacer(),
                            Icon(Icons.search,size: MySize.size20,color: AppColors.whiteColor,),
                            SizedBox(width: MySize.scaleFactorWidth * 30,),
                            Icon(Icons.more_vert,size: MySize.size20,color: AppColors.whiteColor,),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(radius: MySize.scaleFactorHeight * 35,backgroundImage: AssetImage(widget.image)),
                            SizedBox(width: MySize.scaleFactorWidth * 8,),
                            Expanded(child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widget.text,
                                style: TextStyle(
                                  fontSize: MySize.size24,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.whiteColor,
                                ),
                                ),
                                SizedBox(height: MySize.scaleFactorHeight * 5,),
                                SizedBox(
                                  width: MySize.scaleFactorWidth * 300,
                                  child: Text("Dog knowledge sharing, irregularly organized offline exchanges and group buying.",style: TextStyle(
                                    fontSize: MySize.size14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.whiteColor,
                                  ),),
                                ),
                                SizedBox(height: MySize.scaleFactorHeight * 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(widget.members,style:  TextStyle(
                                      fontSize: MySize.size14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.whiteColor,
                                    ),),
                                    Container(
                                        height: MySize.scaleFactorHeight * 28,
                                        width: MySize.scaleFactorWidth * 70,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(MySize.size4),
                                          color: AppColors.blackColor,
                                        ),
                                        child: Text("Joined",style: TextStyle(
                                      fontSize: MySize.size14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.whiteColor
                                    ),)
                                    ),
                                  ],
                                ),
                              ],
                            )
                            )
                          ],
                        ),

                      ],
                    ),
                ),
              ),
            ),
             ),
              SizedBox(height: MySize.scaleFactorHeight * 10,),
              Padding(
                padding: EdgeInsets.all(MySize.size12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Notice Group buying dog food.",style: TextStyle(
                      fontSize: MySize.size15,
                      fontWeight: FontWeight.w400,
                      color:AppColors.blackColor.withOpacity(0.7),
                    ),),
                SizedBox(height: MySize.scaleFactorHeight * 15,),
                Row(
                  children: [
                    InkWell(
                      onTap:(){
                        setState(() {
                          isClicked =! isClicked;
                        });
                      },
                      child: SizedBox(
                        width: MySize.scaleFactorWidth * 70,
                        height: MySize.scaleFactorHeight * 38,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dynamic",style: TextStyle(
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500,
                              color: isClicked ? AppColors.blackColor : AppColors.primaryColor,
                            ),),
                            SizedBox(height: MySize.scaleFactorHeight * 4,),
                            Center(
                              child: isClicked ? SizedBox(
                                width: MySize.scaleFactorWidth * 18,
                                height: MySize.scaleFactorHeight * 3,
                              ):Container(
                              width: MySize.scaleFactorWidth * 18,
                              height: MySize.scaleFactorHeight * 3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 30),
                                color: AppColors.primaryColor,
                              ),

                            ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: MySize.scaleFactorWidth * 25,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          isClicked =! isClicked;
                        });
                      },
                      child: SizedBox(
                        width: MySize.scaleFactorWidth * 70,
                        height: MySize.scaleFactorHeight * 38,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discuss",style: TextStyle(
                                fontSize: MySize.size16,
                                fontWeight: FontWeight.w500,
                                color: isClicked ? AppColors.primaryColor : AppColors.blackColor
                            ),),
                            SizedBox(height: MySize.scaleFactorHeight * 4,),
                            Center(
                              child: isClicked ? Container(
                                width: MySize.scaleFactorWidth * 18,
                                height: MySize.scaleFactorHeight * 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 30),
                                  color: AppColors.primaryColor,
                                ),
                              ): SizedBox(
                                width: MySize.scaleFactorWidth * 18,
                                height: MySize.scaleFactorHeight * 3,

                              )
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                    isClicked ? Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.bottomCenter,
                      children: [
                        ListView.separated(
                          itemCount: discussionItem.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context,index)=>SizedBox(height: MySize.scaleFactorHeight * 10,),
                          itemBuilder: (context,index){
                            return Column(
                              children: [
                                SizedBox(height: MySize.scaleFactorHeight * 10,),
                                SizedBox(
                                  width: MySize.screenWidth,
                                  child: Text(discussionItem[index].question,
                                    style: TextStyle(
                                        fontSize: MySize.size17,
                                        fontWeight: FontWeight.w500,
                                        color:AppColors.blackColor
                                    ),
                                  ),
                                ),
                                SizedBox(height: MySize.scaleFactorHeight * 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CircleAvatar(radius: MySize.scaleFactorHeight * 20,backgroundImage: AssetImage(discussionItem[index].profile),),
                                    SizedBox(width: MySize.scaleFactorWidth * 4,),
                                    Text(discussionItem[index].name,style: TextStyle(
                                      fontSize: MySize.size14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.blackColor,
                                    ),),
                                  ],
                                ),
                                SizedBox(height: MySize.scaleFactorHeight * 8,),
                                SizedBox(
                                  width: MySize.scaleFactorWidth * 380,
                                  child: ReadMoreText(
                                    discussionItem[index].answer,
                                    trimLines: 2,
                                    lessStyle: const TextStyle(
                                      color: AppColors.blueColor,
                                    ),
                                    style: TextStyle(
                                      fontSize: MySize.size15,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.blackColor.withOpacity(0.7),
                                      wordSpacing: MySize.scaleFactorHeight * 2,
                                    ),
                                    trimMode: TrimMode.Line,
                                    trimCollapsedText: 'Look at all',
                                    trimExpandedText: '...Show less',
                                    moreStyle: TextStyle(fontSize: MySize.size15, fontWeight: FontWeight.w400,color: AppColors.blueColor),
                                  )
                                ),
                                SizedBox(height: MySize.scaleFactorHeight * 8,),
                                Padding(
                                  padding: EdgeInsets.only(left: MySize.scaleFactorHeight * 6.0),
                                  child: Row(
                                    children: [
                                      Text("${discussionItem[index].likes} Likes",style: TextStyle(
                                        fontSize: MySize.size12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.blackColor.withOpacity(0.25),
                                      ),),
                                      SizedBox(width: MySize.scaleFactorWidth * 20,),
                                      Text("${discussionItem[index].comments} Comments",style: TextStyle(
                                        fontSize: MySize.size12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.blackColor.withOpacity(0.25),
                                      ),)
                                    ],
                                  ),
                                )
                              ],
                            );
                          },),
                        Positioned(
                          bottom: MySize.scaleFactorHeight * 27,
                          child: bottomContiner(),
                        )
                      ],
                    ):
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.bottomCenter,
                      children: [
                        ListView.separated(
                          itemCount: postItem.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          separatorBuilder: (context,indedx)=>SizedBox(height: MySize.scaleFactorHeight * 8,),
                          itemBuilder: (context, index){
                            return Container(
                               // height: MySize.scaleFactorHeight * 400,
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
                                        child: Image.asset(postItem[index].postImage,height: MySize.scaleFactorHeight * 220, width: MySize.screenWidth,fit: BoxFit.fitWidth,)),
                                    SizedBox(height: MySize.scaleFactorHeight * 10,),
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
                        Positioned(
                          bottom: MySize.scaleFactorHeight * 27,
                          child: bottomContiner(),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

    Widget bottomContiner() {
      return Container(
        height: MySize.scaleFactorHeight * 75,
        width: MySize.screenWidth * 0.75,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 100),
            boxShadow: [
              BoxShadow(
                color: AppColors.blackColor.withOpacity(0.09),
                blurRadius: 30,
                spreadRadius: 0,
                offset: const Offset(0, 10),
              ),
            ]
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(onTap: (){
                Get.to(()=>const SearchScreen());
              },child: const ShadowContainer(icon: AppConstant.questionIcon,text: "Question"),),
              InkWell(
                  onTap: (){
                    Get.to(()=>HomeArticle());
                  },
                  child: const ShadowContainer(icon: AppConstant.articleIcon,text: "Article")),
              const ShadowContainer(icon: AppConstant.dynamicIcon,text: "Dynamic"),
            ],
          ),
        ),
      );
    }

}
