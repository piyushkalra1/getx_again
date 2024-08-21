import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as https;
import 'dart:convert';


class LoginController extends GetxController{

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loading = false.obs;


  void loginapi()async{
  String url ="https://reqres.in/api/login";
  loading.value =true;
  try{

    Map data1 ={
      "email": emailController.value.text,
      "password": passwordController.value.text
    };
    final response = await https.post(Uri.parse(url),
        body:jsonEncode(data1),

    );
    var data = jsonDecode(response.body);

    if(response.statusCode ==200){

      Get.snackbar("Login", "Scuccefuul");
    }else
    {
      print("error");
    }
  }catch(e,s){
    print(e.toString());
    print(s);
  }

  loading.value = false;
  }


}