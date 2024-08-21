
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_again/mvvm/model/login_response_model.dart';
import 'package:getx_again/mvvm/res/routes/route_nmae.dart';
import 'package:getx_again/mvvm/utils/utils.dart';
import 'package:getx_again/mvvm/view_model/controller/user_prefrences/user_prefrence_view_Model.dart';
import 'package:getx_again/repository/login_repository/login_repository.dart';

class LoginViewModel extends GetxController{

  final _api = LoginRepository();
  UserPrefrenceViewModel userPrefrenceViewModel = UserPrefrenceViewModel();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwoedFocusNode = FocusNode().obs;


  RxBool loading = false.obs;

  void loginApi (){
    loading.value = true;
    Map data ={
      "email":emailController.value.text,
      "password": passwordController.value.text,
    };
    Map<String, String> headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",

    };

    _api.loginApi(data, headers).then((value){
      loading.value = false;
      if(value["error"]=="user not found"){
        Utils.toastMessage("Login ${value["error"]}");
      }
      else{
        Utils.toastMessage("Login Successfully");
        userPrefrenceViewModel.saveuser(LoginResponseModel.fromJson(value)).then((value){
          Get.delete<LoginViewModel>();
          Get.toNamed(RoutesName.home)!.then((value){});
        })
            .onError((error ,stackTrace){

        });
      }


    }).onError((error ,stackTrace){
      loading.value = false;
      Utils.toastMessage(error.toString());
    });
  }
}