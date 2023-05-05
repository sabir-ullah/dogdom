import 'package:dogdom_app/utils/my_size.dart';
import 'package:dogdom_app/view/home/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_constant.dart';
import '../../widget/button_widget.dart';
class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final defaultPinTheme = PinTheme(
    width: MySize.scaleFactorWidth * 60,
    height: MySize.scaleFactorHeight * 60,
    textStyle: TextStyle(fontSize: MySize.size20, color: AppColors.whiteColor, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.whiteColor),
      borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 10),
    ),
  );

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Stack(children: [
          Container(
            height: MySize.screenHeight,
            width: MySize.screenWidth,
            decoration:  const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(AppConstant.backImg),
              fit: BoxFit.fill,
            )),
            child: Container(
              color: AppColors.blackColor.withOpacity(0.7),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(MySize.size15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: MySize.scaleFactorHeight * 53,
                    width: MySize.scaleFactorWidth * 144,
                    child: Image.asset(
                      AppConstant.dogdomImg,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: MySize.scaleFactorHeight * 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 8.0),
                  child: Pinput(
                    length: 4,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    defaultPinTheme: defaultPinTheme,
                    textInputAction: TextInputAction.next,
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  ),
                ),
                SizedBox(
                  height: MySize.scaleFactorHeight * 20,
                ),
                ButtonWidget(
                    getFun: () {
                      Get.to(() => const NavigationBarScreen());
                    },
                    btnText: "Login"),
                Padding(
                  padding: EdgeInsets.all(MySize.size10),
                  child: Text("OTP for Login",
                      style: TextStyle(
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.whiteColor,
                      )),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
