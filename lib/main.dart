import 'package:dogdom_app/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const DogdomApp());
}

class DogdomApp extends StatelessWidget {
  const DogdomApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //final textTheme = Theme.of(context).textTheme;
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      
    );
  }
}
