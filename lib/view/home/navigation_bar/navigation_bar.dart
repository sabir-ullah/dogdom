import 'package:dogdom_app/utils/app_colors.dart';
import 'package:dogdom_app/view/circle/circle_screen.dart';
import 'package:dogdom_app/view/home/home_select.dart';
import 'package:dogdom_app/view/message/message_screen.dart';
import 'package:dogdom_app/view/message/notice_center.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_constant.dart';
import '../../personal_center/personal_center.dart';
class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {

  final screens = [
    const HomeSelect(),
    const CircleScreen(),
    NoticeCenter(),
    const MessageScreen(),
    const PersonalCenter(),
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: screens[_selectedIndex],

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.whiteColor,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppConstant.bottom_home)),label: "Home",backgroundColor: AppColors.whiteColor,),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppConstant.bottom_circle)),label: "Circle",backgroundColor: AppColors.whiteColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppConstant.bottom_release)),label: "Release",backgroundColor: AppColors.whiteColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppConstant.bottom_message)),label: "Message",backgroundColor: AppColors.whiteColor),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppConstant.bottom_user)),label: "User",backgroundColor: AppColors.whiteColor),
          ],
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.blackColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}
