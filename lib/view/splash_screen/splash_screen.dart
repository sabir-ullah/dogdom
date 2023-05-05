import 'dart:async';

import 'package:dogdom_app/utils/app_constant.dart';
import 'package:dogdom_app/view/auth/log_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/my_size.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 4),()=>Get.to(()=>const LoginScreen()));
  }
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Padding(
          padding: EdgeInsets.only(bottom: MySize.scaleFactorHeight * 20.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: MySize.scaleFactorHeight * 53,
              width: MySize.scaleFactorWidth * 144,
              child: Image.asset(AppConstant.dogdomImg),
            ),
          ),
        ),
      ),
    );
  }
}
