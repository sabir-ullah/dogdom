import 'package:dogdom_app/utils/app_colors.dart';
import 'package:dogdom_app/utils/app_constant.dart';
import 'package:dogdom_app/utils/my_size.dart';
import 'package:dogdom_app/view/circle/circle_detail.dart';
import 'package:dogdom_app/widget/custom_listtile.dart';
import 'package:dogdom_app/widget/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/card_model.dart';
import '../../model/listTile_model.dart';
import '../../model/story_model.dart';
class CircleScreen extends StatefulWidget {
  const CircleScreen({Key? key}) : super(key: key);

  @override
  State<CircleScreen> createState() => _CircleScreenState();
}

class _CircleScreenState extends State<CircleScreen> {
  List<CardModel> cardItem = [
    CardModel(image: AppConstant.circle_home, titleText: "How do you \ncreate your circle?", subTitle: ""),
    CardModel(image: AppConstant.cardDog, titleText: "How do you create your circle?", subTitle: ""),
  ];

  List<StoryModel> storyItem = [
    StoryModel(image: AppConstant.circle_img1, name: "Golden retriever"),
    StoryModel(image: AppConstant.circle_img2, name: "Back of the head"),
    StoryModel(image: AppConstant.circle_img3, name: "Adopt"),
    StoryModel(image: AppConstant.circle_img1, name: "Labrador Peninsula"),
  ];
  List<ListTileModel> messageItem = [
    ListTileModel(image: AppConstant.circle_view1, name: "I love Golden Retriever", comment: "548 Members",),
    ListTileModel(image: AppConstant.circle_view2, name: "The life of a dog king", comment: "6886 Members",),
    ListTileModel(image: AppConstant.circle_view1, name: "I love Golden Retriever", comment: "548 Members",),
    ListTileModel(image: AppConstant.circle_view2, name: "The life of a dog king", comment: "6886 Members",),

  ];
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(height: MySize.scaleFactorHeight * 10,),
                Padding(
                  padding: EdgeInsets.all(MySize.size15),
                  child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Circle",style: TextStyle(
                      fontSize: MySize.size24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor,
                    ),),
                    Row(
                      children: [
                        ImageIcon(const AssetImage(AppConstant.scanner),color: AppColors.blackColor,size: MySize.size20,),
                        SizedBox(width: MySize.scaleFactorWidth * 25,),
                        Icon(Icons.add,color: AppColors.blackColor,size: MySize.size22,)
                      ],
                    )
                  ],
                ),
                ),
                Padding(
                  padding: EdgeInsets.all(MySize.size15),
                  child:const TextFieldWidget(),),
                SizedBox(
                  height: MySize.scaleFactorHeight * 215,
                  child: ListView.separated(
                      itemCount: cardItem.length,
                      padding: EdgeInsets.all(MySize.size15),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index){
                        return SizedBox(width: MySize.scaleFactorWidth * 10,);
                      },
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              width: MySize.scaleFactorWidth * 360,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 18),
                              ),
                              child: Image.asset(cardItem[index].image,fit: BoxFit.fill,),
                            ),
                            Positioned(
                              top: MySize.scaleFactorHeight * 30,
                              left: MySize.scaleFactorHeight * 15,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: MySize.scaleFactorWidth * 190,
                                    child: Text(cardItem[index].titleText,textAlign: TextAlign.start,style: TextStyle(
                                      fontSize: MySize.size20,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.blackColor,
                                    ),),
                                  ),
                                  SizedBox(height: MySize.scaleFactorHeight * 20,),
                                  Container(
                                    height: MySize.scaleFactorHeight * 30,
                                    width: MySize.scaleFactorWidth * 80,
                                    decoration: BoxDecoration(
                                      color: AppColors.blackColor,
                                      borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 5),
                                    ),
                                    child: Center(
                                      child: Text("Create",style: TextStyle(
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
                SizedBox(height: MySize.scaleFactorHeight * 10,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text("Popular circle",textAlign: TextAlign.start,style: TextStyle(
                        fontSize: MySize.size20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),),
                      Text("More",textAlign: TextAlign.start,style: TextStyle(
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor.withOpacity(0.4),
                      ),),

                    ],
                  ),
                ),
                SizedBox(height: MySize.scaleFactorHeight * 10,),
                SizedBox(
                      height: MySize.scaleFactorHeight * 130,
                      child: ListView.separated(
                        itemCount: storyItem.length,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 15),
                        shrinkWrap: true,
                        separatorBuilder:  (context,index)=>SizedBox(width: MySize.scaleFactorWidth * 18,), itemBuilder: (context,index){
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: MySize.scaleFactorHeight * 40,
                              backgroundImage: AssetImage(storyItem[index].image),
                            ),
                            SizedBox(height: MySize.scaleFactorHeight * 10,),
                            Text(storyItem[index].name,style: TextStyle(
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor.withOpacity(0.7),
                            ),),
                          ],
                        );
                      },)
                  ),
                SizedBox(height: MySize.scaleFactorHeight * 10,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("The circle to join",textAlign: TextAlign.start,style: TextStyle(
                        fontSize: MySize.size20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),),
                      Text("More",textAlign: TextAlign.start,style: TextStyle(
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor.withOpacity(0.4),
                      ),),

                    ],
                  ),
                ),
                SizedBox(height: MySize.scaleFactorHeight *10,),
                ListView.separated(
                  itemCount: messageItem.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 15),
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index)=>SizedBox(height: MySize.scaleFactorHeight * 10,),
                  itemBuilder: (context, index){
                    return CustomListTile(
                        getFun: (){
                          Get.to(()=>CircleDetail(image: messageItem[index].image,text: messageItem[index].name,members: messageItem[index].comment,));
                        },
                        image: messageItem[index].image,
                        name: messageItem[index].name,
                        subText: true,
                        subTitle: messageItem[index].comment,
                        height: MySize.scaleFactorHeight * 70,
                        width: MySize.scaleFactorWidth * 70,
                        richListTile: true,
                      btnText: "Joined",
                      clickedText: "Join",
                    );
                  },
                )
              ],
          ),
        ),
      ),
    );
  }
}
