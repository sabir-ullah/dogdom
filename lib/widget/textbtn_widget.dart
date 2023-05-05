import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/my_size.dart';
class TextBTN extends StatefulWidget {
   const TextBTN({Key? key,required this.text}) : super(key: key);
  final String text;
  @override
  State<TextBTN> createState() => _TextBTNState();
}

class _TextBTNState extends State<TextBTN> {
  bool clicked = false;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Padding(padding: EdgeInsets.symmetric(horizontal: MySize.scaleFactorWidth * 20),child: InkWell(
      onTap: (){
        setState(() {
          clicked =! clicked;
        });
      },
      child: SizedBox(
        height: MySize.scaleFactorHeight * 32,
        width: MySize.scaleFactorWidth * 70,
        child:
        Text(widget.text,style: TextStyle(
          fontSize: MySize.scaleFactorHeight * 16,
          fontWeight: FontWeight.w500,
          color: clicked ? AppColors.primaryColor : AppColors.blackColor,
        ),
        ),
      ),
    ),
    );
  }
}
