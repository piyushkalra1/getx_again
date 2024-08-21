
import 'package:get/get.dart';
class SliderCounter extends GetxController{
  RxDouble opacity = 0.4.obs;


  changeopacity(value){
    opacity.value =value;
  }

}