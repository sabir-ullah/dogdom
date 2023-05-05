import 'package:dogdom_app/utils/my_size.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../widget/text_component.dart';

class ArticlePublish extends StatelessWidget {
  const ArticlePublish({Key? key}) : super(key: key);

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
                    SizedBox(
                      height: MySize.scaleFactorHeight * 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontSize: MySize.size15,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.blackColor.withOpacity(0.4)),
                            )),
                        Text("Writing articles",style: TextStyle(
                          fontSize: MySize.size15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor,
                        ),),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Release",
                              style: TextStyle(
                                fontSize: MySize.size15,
                                fontWeight: FontWeight.w400,
                                color: AppColors.primaryColor,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: MySize.scaleFactorHeight * 10,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: MySize.scaleFactorHeight * 20.0),
                      child: const TextComponent(
                          titleText: "Enter the title",
                          text: "The input text"),
                    ),
                  ]))),
    );
  }
}
