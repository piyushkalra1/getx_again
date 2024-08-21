import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_again/mvvm/res/routes/routes.dart';
import 'package:getx_again/mvvm/view/splsh_screen.dart';

import 'mvvm/res/getx_localization/language.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Locale',
      locale: Locale('en',),
      fallbackLocale: Locale('en',),
      translations: Language(),
      theme: ThemeData(
          primaryColor: Colors.blue
      ),
      home:  SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
