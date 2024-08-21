import 'package:get/get.dart';

class FavController extends GetxController{

  RxList<String> fruitlist = ["apple","orange","mango","banana","grapes"].obs;
  RxList favlist = [].obs;

  addtofav( String val){
    favlist.add(val);
  }

  removeFav(String val){
    favlist.remove(val);
  }

}