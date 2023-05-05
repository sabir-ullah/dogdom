import 'package:chips_choice/chips_choice.dart';
import 'package:dogdom_app/utils/app_colors.dart';
import 'package:dogdom_app/utils/app_constant.dart';
import 'package:dogdom_app/utils/my_size.dart';
import 'package:dogdom_app/widget/textfield_widget.dart';
import 'package:flutter/material.dart';
import '../../../model/search_model.dart';
import '../../../model/story_model.dart';
class SearchScreen extends StatefulWidget {
   const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int tag = 1;
  int tag1 = 0;

  List<String> options = [
    "Spring outing",
    "Teddy",
    "Toy",
    "Show MOE",
    "Dogs don't like to eat",
  ];
  List<String> topSearch = [
    "Dog food",
    "Circle",
    "Lost dog revelation",
  ];
  List<StoryModel> storyItem = [
    StoryModel(image: AppConstant.circle_img1, name: "Golden retriever"),
    StoryModel(image: AppConstant.circle_img2, name: "Back of the head"),
    StoryModel(image: AppConstant.circle_img3, name: "Adopt"),
    StoryModel(image: AppConstant.circle_img1, name: "Labrador Peninsula"),
  ];
  List<SearchModel> searchItems = [
    SearchModel(text: "What is it about dogs that don't like to eat?", answer: "132 to answer", image: AppConstant.popular1),
    SearchModel(text: "How does the dog have a fever the first time deal with?", answer: "2356 to answer", image: AppConstant.popular2),
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
                SizedBox(height: MySize.scaleFactorHeight * 20,),
                Padding(padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 15),child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(child: TextFieldWidget()),
                    SizedBox(width: MySize.scaleFactorWidth * 5,),
                    Text("Cencel",style: TextStyle(
                      fontSize: MySize.size14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackColor.withOpacity(0.55),
                    ),)
                  ],
                ),
                ),
                SizedBox(height: MySize.scaleFactorHeight * 20,),
          Padding(padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 15),child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textWidget("Search history"),
                    ImageIcon(const AssetImage(AppConstant.deleteIcon),color: AppColors.blackColor.withOpacity(0.55),)
                  ],
                ),
          ),
                SizedBox(height: MySize.scaleFactorHeight * 10,),
                ChipsChoice<int>.single(
                  direction:Axis.horizontal,
                  choiceStyle: C2ChipStyle(
                      borderStyle: BorderStyle.solid,
                      backgroundColor: AppColors.blueLight,
                      foregroundColor: AppColors.blackColor.withOpacity(0.7),
                      avatarForegroundStyle: TextStyle(
                        fontSize: MySize.size12,
                        fontWeight: FontWeight.w400,
                        color:AppColors.blackColor.withOpacity(0.7),
                      ),
                      borderRadius: BorderRadius.circular(MySize.scaleFactorWidth * 90),
                  ),
                  //choiceLoader: ,
                  value: tag,
                  wrapped: false,
                  onChanged: (val) => setState(() => tag = val),
                  choiceItems: C2Choice.listFrom<int, String>(
                    source: options,
                    value: (i, v) => i,
                    label: (i, v) => v,
                  ),
                ),
                SizedBox(height: MySize.scaleFactorHeight * 15,),
          Padding(padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 15),child: Row(
                  children: [
                    textWidget("Top Search"),
                    const ImageIcon(AssetImage(AppConstant.fireIcon),color: AppColors.primaryColor)
                  ],
                ),
          ),
                SizedBox(height: MySize.scaleFactorHeight * 10,),
                ChipsChoice<int>.single(
                  direction:Axis.horizontal,
                  choiceStyle: C2ChipStyle(
                    borderStyle: BorderStyle.solid,
                    backgroundColor: AppColors.blueLight,
                    foregroundColor: AppColors.blackColor.withOpacity(0.7),
                    avatarForegroundStyle: TextStyle(
                      fontSize: MySize.size12,
                      fontWeight: FontWeight.w400,
                      color:AppColors.blackColor.withOpacity(0.7),
                    ),
                    borderRadius: BorderRadius.circular(MySize.scaleFactorWidth * 90),
                  ),
                  //choiceLoader: ,
                  value: tag1,
                  wrapped: false,
                  onChanged: (val) => setState(() => tag1 = val),
                  choiceItems: C2Choice.listFrom<int, String>(
                    source: topSearch,
                    value: (i, v) => i,
                    label: (i, v) => v,
                  ),
                ),
                SizedBox(height: MySize.scaleFactorHeight * 15,),
          Padding(padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 15),child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textWidget("Search history"),
                    Text("More",style: TextStyle(
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
                        padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 12),
                        scrollDirection: Axis.horizontal,
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

          Padding(padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 15),child: textWidget("Popular Q&A"),),
                SizedBox(height: MySize.scaleFactorHeight * 15,),
          Padding(padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 15),child: ListView.separated(
                  itemCount: searchItems.length,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  separatorBuilder: (context,index)=>SizedBox(height: MySize.scaleFactorHeight * 8,),
                  itemBuilder: (context,index){
                    return SizedBox(
                      height: MySize.scaleFactorHeight * 80,
                      width: MySize.screenWidth,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MySize.scaleFactorHeight * 25,
                            width: MySize.scaleFactorWidth * 25,
                            child: Center(
                              child: Image.asset(AppConstant.searchIcon),
                            ),
                          ),
                          SizedBox(width: MySize.scaleFactorWidth * 8,),
                          Expanded(
                            child: SizedBox(
                              height: MySize.scaleFactorHeight * 64,
                              width: MySize.screenWidth,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(searchItems[index].text,style: TextStyle(
                                    fontSize: MySize.size15,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.blackColor.withOpacity(0.7),
                                  ),),
                                  SizedBox(height: MySize.scaleFactorHeight * 5,),
                                  Text(searchItems[index].answer,style: TextStyle(
                                    fontSize: MySize.size14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.blackColor.withOpacity(0.25),

                                  ),)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MySize.scaleFactorHeight * 64,
                            width: MySize.scaleFactorWidth * 113,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 8),
                              child: Image.asset(searchItems[index].image,fit: BoxFit.cover,),
                            ),
                          )
                        ],
                      ),
                    );
                },)
          ),
              ],
          ),
        ),
      ),
    );
  }

  Widget textWidget(String text){
    return Text(text,style: TextStyle(
      fontSize: MySize.size17,
      fontWeight: FontWeight.w500,
      color: AppColors.blackColor,
    ),);
  }
}
