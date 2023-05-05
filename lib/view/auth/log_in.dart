import 'package:dogdom_app/view/auth/otp_screen.dart';
import 'package:dogdom_app/widget/button_widget.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_constant.dart';
import '../../utils/my_size.dart';
class LoginScreen extends StatefulWidget {
   const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late FlCountryCodePicker countryPicker;
  CountryCode? countryCode;
  getCode() async {
    final code = await countryPicker.showPicker(context: context);
    setState(() {
      code == null ? countryCode : countryCode = code;
    });
  }

  @override
  void initState() {
    countryCode = const CountryCode(name: "Pakistan", code: "PK", dialCode: "+92",);
    countryPicker = const FlCountryCodePicker(
    );
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Stack(
          children: [
            Container(
              height: MySize.screenHeight,
              width: MySize.screenWidth,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppConstant.backImg),fit: BoxFit.fill,
                  )
              ),
              child: Container(
                color: AppColors.blackColor.withOpacity(0.7),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(MySize.size15),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: SizedBox(
                            height: MySize.scaleFactorHeight * 53,
                            width: MySize.scaleFactorWidth * 144,
                            child: Image.asset(AppConstant.dogdomImg,color: AppColors.whiteColor,),
                          ),
                        ),
                        SizedBox(height: MySize.scaleFactorHeight * 20,),
                        Container(
                          height: MySize.scaleFactorHeight * 60,
                          width: MySize.screenWidth,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor.withOpacity(0.25),
                            borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 70)
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 10.0),
                              child: Row(
                                children: [
                                  SizedBox(width: MySize.scaleFactorWidth * 12,),
                                  Text( countryCode?.dialCode ?? countryCode!.dialCode,style: TextStyle(
                                    fontSize: MySize.size17,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.whiteColor,
                                  ),),
                                  InkWell(
                                    onTap: () {
                                      getCode();
                                    },
                                    child: const Icon(Icons.arrow_drop_down,color: AppColors.whiteColor,),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      style: TextStyle(
                                        fontSize: MySize.size17,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.whiteColor,
                                      ),
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          )
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),

                          ),
                        ),
                        SizedBox(height: MySize.scaleFactorHeight * 20,),
                        ButtonWidget(getFun: (){Get.to(()=>const OTPScreen());}  ,btnText: "Get Captcha"),
                        Padding(
                          padding: EdgeInsets.all(MySize.size10),
                          child: Text("Password to Login",style: TextStyle(
                            fontSize: MySize.size14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.whiteColor,
                          )),
                        ),
                        
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(MySize.scaleFactorHeight * 12.0),
                    child: SizedBox(
                      width: MySize.scaleFactorWidth * 350,
                      child: Text("By signing in, you agree to the User Agreement and Privacy Terms.",
                        textAlign: TextAlign.center,style: TextStyle(
                          fontSize: MySize.size14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
        ]
              ),
            ),
    );
  }
}
