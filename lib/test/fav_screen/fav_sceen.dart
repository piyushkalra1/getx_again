import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fav_controller.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {

  FavController favController =Get.put(FavController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemCount: favController.fruitlist.length,itemBuilder: (BuildContext context ,i){
        return ListTile(
          title: Text(favController.fruitlist[i].toString(),),
          onTap: (){
            if(favController.favlist.contains(favController.fruitlist[i].toString())){
              favController.removeFav(favController.fruitlist[i].toString());
            }else
              favController.addtofav(favController.fruitlist[i].toString());
          },
          trailing: Obx(()=>Icon(Icons.favorite,
            color: favController.favlist.contains(favController.fruitlist[i].toString())?Colors.pink:Colors.black ,
          ),)
        );
      })
    );
  }
}
