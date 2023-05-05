import 'package:dogdom_app/utils/my_size.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
class FollowButton extends StatefulWidget {
  const FollowButton({Key? key, this.text = "Follow", this.clicked= "Unfollow"}) : super(key: key);
  final String text;
  final String clicked;
  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  bool isfollow = true;


  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return InkWell(
       onTap: (){
         setState(() {
           isfollow =! isfollow;
         });
       },
       child: Container(
         height: MySize.scaleFactorHeight * 30,
         width: MySize.scaleFactorWidth * 70,
         decoration: BoxDecoration(
           color: isfollow ? AppColors.primaryColor : Colors.grey,
           borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 5),
         ),
         child: Center(
           child: Text(isfollow ? widget.text : widget.clicked,style: TextStyle(
             fontSize: MySize.size12,
             fontWeight: FontWeight.w400,
             color: AppColors.whiteColor,
           ),),
         ),
       ),
     );
  }
}
