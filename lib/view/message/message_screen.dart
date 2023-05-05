import 'package:dogdom_app/model/listTile_model.dart';
import 'package:dogdom_app/utils/app_colors.dart';
import 'package:dogdom_app/utils/app_constant.dart';
import 'package:dogdom_app/utils/my_size.dart';
import 'package:dogdom_app/view/message/chat_message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../model/story_model.dart';
class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  List<StoryModel> storyItem = [
    StoryModel(image: AppConstant.profile_img1, name: "Marvin"),
    StoryModel(image: AppConstant.profile_img2, name: "Kristin"),
    StoryModel(image: AppConstant.profile_img3, name: "Arthur"),
    StoryModel(image: AppConstant.profile_img4, name: "Nguyen"),
    StoryModel(image: AppConstant.profile_img5, name: "Jerry"),
  ];
  List<ListTileModel> messageItme = [
    ListTileModel(image: AppConstant.list_img1, name: "Black Marvin", comment: "😜 😜 😜 😜", time: "01:30"),
    ListTileModel(image: AppConstant.list_img2, name: "Nguyen Shane", comment: "There's somebody out there ...", time: "01:30"),
    ListTileModel(image: AppConstant.list_img3, name: "Cooper Kristin", comment: "Life doesn't have to be perfect.", time: "17:25"),
    ListTileModel(image: AppConstant.alexandra_profile, name: "Henry Arthur", comment: "A goal without a plan is just ...", time: "17:28"),
    ListTileModel(image: AppConstant.list_img4, name: "Nguyen Shane", comment: "Don’t let your dreams 🤗", time: "13:01"),
    ListTileModel(image: AppConstant.list_img5, name: "Flores Juanita", comment: "Good relationship don't just ...", time: "10:20"),
    ListTileModel(image: AppConstant.list_img6, name: "Williamson Darlene", comment: "Cease to struggle and you ...", time: "Yesterday"),
    ListTileModel(image: AppConstant.list_img7, name: "Richards Aubrey", comment: "😜 😜 😜 😜", time: "Yesterday"),
  ];
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Padding(
                 padding: EdgeInsets.all(MySize.size16),
          child: SizedBox(
                  height: MySize.scaleFactorHeight * 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      Text("Messages",style: TextStyle(
                        fontSize: MySize.size17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor
                      ),),
                      InkWell(
                        onTap: (){
                        },
                        child: const Icon(Icons.add,color: AppColors.blackColor,),
                      )
                    ],
                  ),
                ),
               ),
                SizedBox(height: MySize.scaleFactorHeight * 20,),
                 SizedBox(
                    height: MySize.scaleFactorHeight * 115,
                    child: ListView.separated(
                      padding: EdgeInsets.all(MySize.size12),
                        itemCount: storyItem.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      separatorBuilder:  (context,index)=>SizedBox(width: MySize.scaleFactorWidth * 30,), itemBuilder: (context,index){
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: MySize.scaleFactorHeight * 30,
                                backgroundImage: AssetImage(storyItem[index].image),
                              ),
                              SizedBox(height: MySize.scaleFactorHeight * 10,),
                              Text(storyItem[index].name,style: TextStyle(
                                fontSize: MySize.size14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackColor.withOpacity(0.55),
                              ),),
                            ],
                          );
                    },)
                ),
                ListView.separated(
                  itemCount: messageItme.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(MySize.size15),
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index)=>SizedBox(height: MySize.scaleFactorHeight * 10,),
                  itemBuilder: (context, index){
                    return  Dismissible(
                      onDismissed: (DismissDirection direction) {
                        setState(() {
                          messageItme.removeAt(index);
                        });
                      },
                      secondaryBackground: Container(
                        color: AppColors.redColor,
                          alignment: Alignment.centerRight,
                            padding: EdgeInsets.only(right: MySize.size15),
                            child: const Text(
                            'Delete',
                            style: TextStyle(color: Colors.white),
                          ),
                      ),
                      background: Container(),
                      key: UniqueKey(),
                      direction: DismissDirection.endToStart,
                      child: InkWell(
                        onTap: (){
                          Get.to(()=>ChattingScreen(image: messageItme[index].image,name: messageItme[index].name,));
                        },
                        child: SizedBox(
                          height: MySize.scaleFactorHeight * 70,
                          width: MySize.screenWidth,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(radius: MySize.scaleFactorHeight * 33,backgroundImage: AssetImage(messageItme[index].image),),
                              SizedBox(width: MySize.scaleFactorWidth * 10,),
                              Padding(
                                padding: EdgeInsets.only(top: MySize.scaleFactorHeight * 10.0),
                                child: Column(
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
                              const Spacer(),
                              Text(messageItme[index].time!,style: TextStyle(
                                fontSize: MySize.size12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackColor.withOpacity(0.25),
                              ),)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
          ),
        ),
        bottomNavigationBar: Container(
          height: MySize.scaleFactorHeight * 60,
          decoration: BoxDecoration(
            color: AppColors.whiteColor.withOpacity(0.9),
            boxShadow: [
              BoxShadow(
                color: AppColors.blackColor.withOpacity(0.05),
                blurRadius: 0,
                spreadRadius: 0,
                offset: const Offset (0,-0.5),
              )
            ]
          ),
          child:  Padding(
            padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "search for Friends' Name...",
                hintStyle: TextStyle(
                  fontSize: MySize.size14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blackColor.withOpacity(0.55)

                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
