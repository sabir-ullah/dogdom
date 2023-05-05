import 'package:dogdom_app/model/post_model.dart';
import 'package:dogdom_app/utils/app_constant.dart';
import 'package:dogdom_app/view/home/navigation_bar/navigation_bar.dart';
import 'package:dogdom_app/widget/custom_like.dart';
import 'package:dogdom_app/widget/custom_listtile.dart';
import 'package:dogdom_app/widget/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/app_colors.dart';
import '../../utils/my_size.dart';
import '../../widget/custom_comment.dart';
import '../../widget/custom_share.dart';
class HomeDiscover extends StatefulWidget {
  const HomeDiscover({Key? key}) : super(key: key);

  @override
  State<HomeDiscover> createState() => _HomeDiscoverState();
}

class _HomeDiscoverState extends State<HomeDiscover> {


  List<PostModel> postItem = [
    PostModel(profileImage: AppConstant.huntin_profile, name: "Huntington", postText: "With golden retriever together of the day is always short, soon to the New Year, leave you", postImage: AppConstant.huntin_postImg, likes: 8668, comments: "168", shares: "356",subTitle: "Golden Retriever . Mobile"),
    PostModel(profileImage: AppConstant.willaims_profile, name: "Quentin Raman", postText: "Your dog is only a part of your world, but to your dog, you are the world.😊 😊", postImage: AppConstant.willaims_post, likes: 1688, comments: "685", shares: "5,233",subTitle: "Labrador Peninsula . Atlanta "),
    PostModel(profileImage: AppConstant.huntin_profile, name: "Edgar", postText: "If you just because of its cute appearance, silly expression so love, please do not keep it.", postImage: AppConstant.huntin_postImg, likes: 668, comments: "452", shares: "828",subTitle: "Golden Retriever · Mobile "),
  ];

  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(MySize.size15),
            child: Column(
              children: [
                SizedBox(height: MySize.scaleFactorHeight * 30,),
                Row(
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
                              Get.to(()=>const NavigationBarScreen());
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
                      padding: EdgeInsets.only(bottom: MySize.scaleFactorHeight * 20.0),
                      child: const ImageIcon(AssetImage(AppConstant.messageIcon),color: AppColors.blackColor,size: 20,),
                    ),
                  ],
                ),
                 const TextFieldWidget(),
                SizedBox(height: MySize.scaleFactorHeight * 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    tabContainer(AppConstant.nearbyIcon, "Nearby"),
                    tabContainer(AppConstant.revelationIcon, "Relevation"),
                    tabContainer(AppConstant.fosterIcon, "Foster care"),
                  ],
                ),
                SizedBox(height: MySize.scaleFactorHeight * 10,),
                ListView.separated(
                  itemCount: postItem.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context,indedx)=>SizedBox(height: MySize.scaleFactorHeight * 5,),
                  itemBuilder: (context, index){
                    return Container(
                        height: MySize.scaleFactorHeight * 380,
                        width: MySize.screenWidth,
                        padding: EdgeInsets.all(MySize.size5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomListTile(image: postItem[index].profileImage, name: postItem[index].name,subText: true,subTitle: postItem[index].subTitle),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 10.0,vertical: MySize.scaleFactorHeight * 5),
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

      ),
    );
  }
  Widget tabContainer(String image,String text) {
    return SizedBox(
      height: MySize.scaleFactorHeight * 60,
      width: MySize.scaleFactorWidth * 110,
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

  Widget postContainer(String image, String? number){
    return SizedBox(
      height: MySize.scaleFactorHeight * 25,
      width: MySize.scaleFactorWidth * 80,
      child: Row(
        children: [
          ImageIcon(AssetImage(image),color: AppColors.blackColor.withOpacity(0.4),),
          SizedBox(width: MySize.scaleFactorWidth * 5,),
          Text(number!,style: TextStyle(
              fontSize: MySize.size15,
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor.withOpacity(0.4)
          ),)
        ],
      ),
    );

  }

}
