
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../res/colors/appcolors.dart';

class Utils {



  static void fieldFocusChange (BuildContext context , FocusNode current , FocusNode nextfocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextfocus);
  }

  static toastMessage(String message){
    Fluttertoast.showToast(msg: message,
    backgroundColor: Appcolors.redcolor,
      fontSize: 22,gravity: ToastGravity.TOP
    );
  }

  // static snackBar(String message){
  //   Get.snackbar(title, message,);
  //
  //
  // }

}