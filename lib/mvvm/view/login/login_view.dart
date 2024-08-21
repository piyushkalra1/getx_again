import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_again/mvvm/utils/utils.dart';
import 'package:getx_again/mvvm/view_model/controller/login/login_view_model.dart';
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  final logincontroller = Get.put(LoginViewModel());
  final _formkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Login"),centerTitle: true,
      automaticallyImplyLeading: false,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                ),
                controller: logincontroller.emailController.value,
                focusNode: logincontroller.emailFocusNode.value,
                validator: (value){
                  if(value!.isEmpty){
                    Utils.toastMessage("Enter Eamml");
                  }
                },
                onFieldSubmitted: (val){
                  Utils.fieldFocusChange(context, logincontroller.emailFocusNode.value, logincontroller.passwoedFocusNode.value);
                },
              ),

              TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                ),
                controller: logincontroller.passwordController.value,
                focusNode: logincontroller.passwoedFocusNode.value,
                obscureText: true,
                obscuringCharacter: '*',
                validator: (value){
                  if(value!.isEmpty){
                    Utils.toastMessage("Enter Password");
                  }
                },
                onFieldSubmitted: (val){
                  // Utils.fieldFocusChange(context, logincontroller.emailFocusNode.value, logincontroller.passwoedFocusNode.value)
                },
              ),

              TextButton(onPressed: (){
                if(_formkey.currentState!.validate()){
                  logincontroller.loginApi();
                }
              }, child: Text("login"))
            ],
          ),
        )
      )
    );
  }
}
