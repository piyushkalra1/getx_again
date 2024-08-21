
import 'package:get/get.dart';

class SwitchController extends GetxController{
  RxBool newvalue = false.obs;

  setSwitch(bool value){
    newvalue.value = value;
    print(newvalue.value);
  }
}