
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "emial"
            ),
            controller: loginController.emailController.value,
          ),

          TextFormField(
            decoration: InputDecoration(
                hintText: "password"
            ),
            controller: loginController.passwordController.value,
          ),
          SizedBox(height: 20,),

       Obx((){
         return    InkWell(
           onTap: (){
             loginController. loginapi();
           },

           child: Center(

             child: loginController.loading.value ?CircularProgressIndicator(): Text("login"),
           ),
         );
       })
        ],
      ),
    );
  }
}
