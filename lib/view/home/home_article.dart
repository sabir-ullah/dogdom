import 'package:dogdom_app/utils/app_colors.dart';
import 'package:dogdom_app/utils/app_constant.dart';
import 'package:dogdom_app/utils/my_size.dart';
import 'package:dogdom_app/widget/button_widget.dart';
import 'package:dogdom_app/widget/custom_listtile.dart';
import 'package:flutter/material.dart';
import '../../model/listTile_model.dart';
import '../../widget/custom_like.dart';
// ignore: must_be_immutable
class HomeArticle extends StatelessWidget {
   HomeArticle({Key? key}) : super(key: key);
  List<ListTileModel> listItem = [
    ListTileModel(image: AppConstant.miraProfile, name: "Vicky", likes: 180, comment: "Speak to me often. Even if I don't understand your words, I feel your voice speaking to me. 👉", time: "15 Minutes ago · Reply"),
    ListTileModel(image: AppConstant.article_profile1, name: "Tim Noyes", likes: 186, comment: "Take care of me when I get old, for you, too, will grow old. 😋 😋", time: "30 Minutes ago · Reply"),
    ListTileModel(image: AppConstant.article_profile2, name: "Bill Defoe", likes: 686, comment: "Before you take me home, please remember that my life is likely to last ten to fifteen years. If you abandon me, it will be my greatest pain.", time: "15 Minutes ago · Reply"),
  ];
  bool follow = true;

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: (){},
                        child: const Icon(Icons.arrow_back_ios,color: AppColors.blackColor,)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: AppColors.blackColor,)),
                     InkWell(
                         onTap: (){},
                         child: const Icon(Icons.more_vert))
                      ],
                    ),
                  ],
                ),
                CustomListTile(image: AppConstant.miraProfile, name: "Cyarine", subTitle: "Golden Retriever · Mobile ", subText: true, ),
                SizedBox(height: MySize.scaleFactorHeight * 20,),
                SizedBox(
                  height: MySize.scaleFactorHeight * 40,
                  child: Text("Please be patient with me and give me some time to get to know me.",style: TextStyle(
                    fontSize:MySize.size15,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackColor.withOpacity(0.55)
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: MySize.scaleFactorHeight * 5.0),
                  child: SizedBox(
                    height: MySize.scaleFactorHeight * 220,
                    width: MySize.screenWidth,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 8),
                        child: Image.asset(AppConstant.mira_cover,fit: BoxFit.cover,)),
                  ),
                ),
                SizedBox(
                  height: MySize.scaleFactorHeight * 190,
                  child: Text("It tiger head, round head, hairy ears, ear tip is? Colored and droopy. Eyes big, round, like a bell. The tip of the nose was dark brown, like a chocolate bar. Large nostrils, wheezing when hot. The hair around the mouth is white, like long beside the beard, can have a man's taste! It likes to use sticky tongue licking our hands, that feeling wet, can be itchy! Its feet are plum shaped, long a thick layer of meat pad, sharp claws into the meat pad, start road not a sound.",style: TextStyle(
                      fontSize: MySize.size15,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackColor.withOpacity(0.55),
                    height: 1.3,
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: MySize.scaleFactorHeight * 5.0),
                  child: SizedBox(
                    height: MySize.scaleFactorHeight * 205,
                    width: MySize.screenWidth,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 8),
                        child: Image.asset(AppConstant.article_imag,fit: BoxFit.cover,)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: MySize.scaleFactorHeight * 5.0),
                  child: SizedBox(
                    height: MySize.scaleFactorHeight * 180,
                    width: MySize.screenWidth,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 8),
                        child: Image.asset(AppConstant.article_dogImag,fit: BoxFit.cover,)),
                  ),
                ),


                SizedBox(
                  height: MySize.scaleFactorHeight * 320,
                  child: Column(
                    children: [
                      Text("My family has a cute and clever dog, Mary. It's fat, fat and lovely. Its yellow fur is very beautiful. Mary's eyes were round like two topaz stones. Its legs are very long and it can run very fast. The tail, in particular, wagged to and fro when it saw me, as if to show affection to me. ",style: TextStyle(
                          fontSize: MySize.size15,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor.withOpacity(0.55),
                        height: 1.3,
                      ),),
                      SizedBox(height: MySize.scaleFactorHeight * 10,),
                      Text("The dog had a very strange appearance, with a flat nose, a wide mouth, swaying ears, and a wrinkled forehead, but in a very orderly way. Many bigger dogs are a little afraid of him and hide from him. In fact, it is disgusting and kind. Every time I take it to the park or climb a mountain, passers-by point at it. I thought, perhaps it was thinking to itself: I am very ugly, but I am very gentle.",style: TextStyle(
                          fontSize: MySize.size15,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor.withOpacity(0.55),
                        height: 1.3,
                      ),),
                    ],
                  ),
                ),
                ButtonWidget(btnText: "Publish my article",borderRadius: MySize.scaleFactorHeight * 4,),
                SizedBox(height: MySize.scaleFactorHeight * 10,),
                Text("Message",style: TextStyle(
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor.withOpacity(0.85),
                ),),
                ListView.separated(
                  itemCount: listItem.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index)=>SizedBox(height: MySize.scaleFactorHeight * 10,),
                  itemBuilder: (context, index){
                    return  SizedBox(
                      height: MySize.scaleFactorHeight * 100,
                      child: ListTile(
                        leading: Container(
                          height: MySize.scaleFactorHeight * 35,
                          width: MySize.scaleFactorWidth * 35,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child:Image.asset(listItem[index].image),
                        ),
                        horizontalTitleGap: 5,
                        title: Padding(
                          padding: EdgeInsets.only(top: MySize.scaleFactorHeight * 15),
                          child: Text(listItem[index].name,style: TextStyle(
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackColor,
                          ),),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: MySize.scaleFactorHeight * 55,
                                width: MySize.screenWidth,
                                child: Text(listItem[index].comment,textAlign: TextAlign.justify,style: TextStyle(
                                  fontSize: MySize.size14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.blackColor.withOpacity(0.7),
                                ),)),
                            Text(listItem[index].time!,style: TextStyle(
                              fontSize: MySize.size12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor.withOpacity(0.25),
                            ),)
                          ],
                        ),
                        trailing: SizedBox(
                          height:MySize.scaleFactorHeight * 18,
                          width: MySize.scaleFactorWidth * 60,
                          child: Row(
                            children: [
                              CustomLike(likes:listItem[index].likes!,width: MySize.scaleFactorWidth * 60,),
                            ],
                          ),
                        ),
                      ),
                    );
                  }

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
