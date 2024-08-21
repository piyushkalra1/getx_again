

import 'package:get/get.dart';
import 'package:getx_again/mvvm/model/login_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPrefrenceViewModel {

  Future<bool> saveuser (LoginResponseModel responselmodel)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('token', responselmodel.token.toString());
    
    return true;
  }

  Future<LoginResponseModel> getuser ()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  String? usertoken=  sharedPreferences.getString('token',);

    return LoginResponseModel(
      token: usertoken
    );
  }

  Future<bool> removeruser ()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
    return true;
  }
}