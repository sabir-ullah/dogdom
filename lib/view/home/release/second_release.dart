// ignore_for_file: empty_catches

import 'dart:io';

import 'package:dogdom_app/utils/app_colors.dart';
import 'package:dogdom_app/utils/app_constant.dart';
import 'package:dogdom_app/utils/my_size.dart';
import 'package:dogdom_app/view/home/release/article_publish.dart';
import 'package:dogdom_app/widget/text_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SecondRelease extends StatefulWidget {
 const SecondRelease({Key? key}) : super(key: key);

  @override
  State<SecondRelease> createState() => _SecondReleaseState();
}

class _SecondReleaseState extends State<SecondRelease> {
  final ImagePicker imgpicker = ImagePicker();
  List<XFile>? imagefiles;

  openImages() async {
    try {
      var pickedfiles = await imgpicker.pickMultiImage();
      //you can use ImageCourse.camera for Camera capture
      // ignore: unnecessary_null_comparison
      if(pickedfiles != null){
        imagefiles = pickedfiles;
        setState(() {
        });
      }else{
      }
    }catch (e) {
    }
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          body: Padding(
            padding: EdgeInsets.all(MySize.size15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: MySize.scaleFactorHeight * 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: (){}, child: Text("Cancel",style: TextStyle(
                      fontSize: MySize.size15,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackColor.withOpacity(0.4)

                    ),)),
                    TextButton(onPressed: (){
                      Get.to(()=>const ArticlePublish());
                    }, child: Text("Release",style: TextStyle(
                        fontSize: MySize.size15,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryColor,

                    ),))
                  ],
                ),
                SizedBox(height: MySize.scaleFactorHeight * 10,),
                Padding(
                  padding: EdgeInsets.only(top: MySize.scaleFactorHeight * 20.0),
                  child: const TextComponent(titleText: "Release something new", text: "What you're thinking right now..."),
                ),
                SizedBox(
                  height: MySize.scaleFactorHeight * 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                          imagefiles != null
                              ? Wrap(
                                  children: imagefiles!.map((imageone) {
                                    return Padding(
                                      padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 5.0),
                                      child: Container(
                                        height: MySize.scaleFactorHeight * 85,
                                        width: MySize.scaleFactorWidth * 85,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 8)
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 8),
                                          child: Image.file(
                                            File(imageone.path),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                )
                              : Container(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 5.0),
                            child: Container(
                              height: MySize.scaleFactorHeight * 85,
                              width: MySize.scaleFactorWidth * 85,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 8),
                                image: const DecorationImage(
                                  image: AssetImage(AppConstant.mira_cover),fit: BoxFit.cover,
                                )
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 5.0),
                            child: Container(
                              height: MySize.scaleFactorHeight * 85,
                              width: MySize.scaleFactorWidth * 85,
                              decoration: BoxDecoration(
                                color: AppColors.greyLight,
                                borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 8)
                              ),
                              child: InkWell(
                                  onTap: (){
                                    openImages();
                                  },
                                  child: Icon(Icons.add,color: AppColors.blackColor.withOpacity(0.7),size: MySize.scaleFactorHeight * 30,)),
                            ),
                          )
                        ],
                  ),
                ),
                SizedBox(height: MySize.screenWidth * 0.3,),
                Row(
                  children: [
                    Container(
                      height: MySize.scaleFactorHeight * 30,
                      width: MySize.scaleFactorWidth * 95,
                      decoration: BoxDecoration(
                        color: AppColors.greyLight,
                        borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 50),
                      ),
                     child:Padding(
                       padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 8.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            const ImageIcon(AssetImage(AppConstant.locationIcon,),color: AppColors.blackColor,size: 15,),
                                Text("Location",style: TextStyle(
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor
                            ),)
                          ]
                        ),
                     ),
                    ),
                    SizedBox(width: MySize.scaleFactorWidth * 10),
                    Container(
                      height: MySize.scaleFactorHeight * 30,
                      width: MySize.scaleFactorWidth * 95,
                      decoration: BoxDecoration(
                        color: AppColors.greyLight,
                        borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 50),
                      ),
                      child:Padding(
                        padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 15.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(Icons.public,color: AppColors.blackColor,size: 15,),
                              Text("Public",style: TextStyle(
                                  fontSize: MySize.size14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.blackColor
                              ),)
                            ]
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}
