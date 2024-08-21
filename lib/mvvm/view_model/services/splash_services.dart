
import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'package:get/get.dart';
import 'package:getx_again/mvvm/view_model/controller/user_prefrences/user_prefrence_view_Model.dart';
import 'dart:async';

import '../../res/routes/route_nmae.dart';

class SplashServices {

  UserPrefrenceViewModel userPrefrence = UserPrefrenceViewModel();
  void isLogin(){
   userPrefrence.getuser().then((value){
     if(value.token!.isEmpty || value.token.toString() =="null" ){
       Timer( const Duration(
           seconds: 1
       ),()=>Get.toNamed(RoutesName.login));
     }else
       Timer( const Duration(
           seconds: 1
       ),()=>Get.toNamed(RoutesName.home));
   });

  }
}
