import 'package:dogdom_app/model/card_model.dart';
import 'package:dogdom_app/model/post_model.dart';
import 'package:dogdom_app/utils/app_constant.dart';
import 'package:dogdom_app/view/home/home_discover.dart';
import 'package:dogdom_app/view/message/message_screen.dart';
import 'package:dogdom_app/widget/custom_listtile.dart';
import 'package:dogdom_app/widget/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/app_colors.dart';
import '../../utils/my_size.dart';
import '../../widget/custom_comment.dart';
import '../../widget/custom_like.dart';
import '../../widget/custom_share.dart';
class HomeSelect extends StatefulWidget {
  const HomeSelect({Key? key}) : super(key: key);

  @override
  State<HomeSelect> createState() => _HomeSelectState();
}

class _HomeSelectState extends State<HomeSelect> {
  
  List<CardModel> cardItem = [
    CardModel(image: AppConstant.cardDog, titleText: "Take me home", subTitle: "Take care of stray dogs, please take them home."),
    CardModel(image: AppConstant.cardDog, titleText: "Take me home", subTitle: "Take care of stray dogs, please take them home."),
  ];

  List<PostModel> postItem = [
    PostModel(profileImage: AppConstant.miraProfile, name: "Mirabelle Swift", postText: "Adwords Keyword Research For Beginners.", postImage: AppConstant.mira_cover, likes: 5233, comments: "189", shares: "238",),
    PostModel(profileImage: AppConstant.willaims_profile, name: "William Watts", postText: "How To Boost Your Traffic Of Your Blog And Destroy The Competition.😏 😏 😋", postImage: AppConstant.willaims_post, likes: 9236, comments: "639", shares: "173",),
    PostModel(profileImage: AppConstant.jorge_profile, name: "Jorge Long", postText: "A dog is a beloved, intelligent, and very loyal animal. So I like dogs very much.", postImage: AppConstant.jorge_postImg, likes: 9784, comments: "589", shares: "168",),
  ];
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(height: MySize.scaleFactorHeight * 30,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 15),
            child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: MySize.scaleFactorWidth * 15,),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 50,
                      width: MySize.scaleFactorWidth * 80,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                isClicked =! isClicked;
                              });
                            },
                            child: Text("Select",style: TextStyle(
                              fontSize: MySize.size17,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackColor,
                            ),),
                          ),
                         isClicked ? SizedBox(
                            width: MySize.scaleFactorWidth * 20,
                            child: Image.asset(AppConstant.elipsImg),
                          ): Container(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 50,
                      width: MySize.scaleFactorWidth * 80,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Get.to(()=>const HomeDiscover());
                              setState(() {
                                isClicked =!isClicked;
                              });
                            },
                            child: Text("Discover",style: TextStyle(
                              fontSize: MySize.size17,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackColor,
                            ),),
                          ),
                          isClicked ? Container(): SizedBox(
                            width: MySize.scaleFactorWidth * 20,
                            child: Image.asset(AppConstant.elipsImg),
                          )
                        ],
                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.only(bottom: MySize.scaleFactorHeight * 25),
                    child: InkWell(onTap: (){Get.to(()=>const MessageScreen());},child:const ImageIcon(AssetImage(AppConstant.messageIcon),color: AppColors.blackColor,size: 20,),),
                  ),
                  ],
                ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 15),
            child:const TextFieldWidget()),
                SizedBox(height: MySize.scaleFactorHeight * 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    tabContainer(AppConstant.rankingIcon, "Ranking"),
                    tabContainer(AppConstant.discussIcon, "Discuss"),
                    tabContainer(AppConstant.surroundingIcon, "Surrounding"),

                  ],
                ),
                SizedBox(height: MySize.scaleFactorHeight * 10,),

                SizedBox(
                  height: MySize.scaleFactorHeight * 200,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 15),
                    itemCount: cardItem.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index){
                      return SizedBox(width: MySize.scaleFactorWidth * 10,);
                    },
                    itemBuilder: (context, index) {
                     return Stack(
                        children: [
                          Container(
                            height: MySize.scaleFactorHeight * 190,
                            width: MySize.scaleFactorWidth * 360,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 18),
                            ),
                            child: Image.asset(cardItem[index].image,fit: BoxFit.fill,),
                          ),
                          Positioned(
                            top: MySize.scaleFactorHeight * 30,
                            left: MySize.scaleFactorHeight * 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(cardItem[index].titleText,style: TextStyle(
                                  fontSize: MySize.size24,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blackColor,
                                ),),
                                SizedBox(height: MySize.scaleFactorHeight * 5,),
                                SizedBox(
                                  width: MySize.scaleFactorWidth * 180,
                                  child: Text(cardItem[index].subTitle,textAlign: TextAlign.justify,style: TextStyle(
                                    fontSize: MySize.size14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.blackColor,
                                  ),),
                                ),
                                SizedBox(height: MySize.scaleFactorHeight * 8,),
                                Container(
                                  height: MySize.scaleFactorHeight * 30,
                                  width: MySize.scaleFactorWidth * 80,
                                  decoration: BoxDecoration(
                                    color: AppColors.blackColor,
                                    borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 5),
                                  ),
                                  child: Center(
                                    child: Text("Let me",style: TextStyle(
                                      fontSize: MySize.size12,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.whiteColor,
                                    ),),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    }
                  ),
                ),
                ListView.separated(
                  itemCount: postItem.length,
                  padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 15),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context,index)=>SizedBox(height: MySize.scaleFactorHeight * 5,),
                  itemBuilder: (context, index){
                    return Container(
                        height: MySize.scaleFactorHeight * 380,
                        width: MySize.screenWidth,
                        padding: EdgeInsets.all(MySize.size5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomListTile(getFun: (){},image:postItem[index].profileImage, name: postItem[index].name,subText: false,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 10,vertical: MySize.scaleFactorHeight * 5),
                              child: Text(postItem[index].postText,style: TextStyle(
                                fontSize: MySize.size15,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackColor.withOpacity(0.7),
                              ),),
                            ),
                            SizedBox(height: MySize.scaleFactorHeight * 10,),
                            Image.asset(postItem[index].postImage,height: MySize.scaleFactorHeight * 220,width: MySize.screenWidth,fit: BoxFit.fill,),
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
                                    InkWell(onTap: (){},child: ImageIcon(const AssetImage(AppConstant.moreIcon),color: AppColors.blackColor.withOpacity(0.4),)),
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
          ),
        ),
    );
  }
  Widget tabContainer(String image,String text) {
    return SizedBox(
      height: MySize.scaleFactorHeight * 60,
      width: MySize.scaleFactorWidth * 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MySize.scaleFactorHeight * 25,
            width: MySize.scaleFactorWidth * 27,
            child: Image.asset(image),
          ),
          SizedBox(height: MySize.scaleFactorHeight * 5,),
          Text(text, style: TextStyle(
            fontSize: MySize.size14,
            fontWeight: FontWeight.w400,
            color: AppColors.blackColor,
          ),)
        ],
      ),
    );
  }
}
