
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view_model/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  SplashServices splashServices = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin();
  }

  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),

    );
  }
}
