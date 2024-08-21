
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_again/mvvm/data/response/status.dart';
import 'package:getx_again/mvvm/utils/utils.dart';
import 'package:getx_again/mvvm/view_model/controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final homeController = Get.put(HomeController());

  @override
  void initState() {
    // TODO: implement initState
    homeController.useristapi();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Obx((){
        switch(homeController.rxRequestStatus.value){
          case Status.Loading:
            return Center(child: CircularProgressIndicator(),);
          case Status.Completed:
            return ListView.builder(
                itemCount: homeController.userlist.value.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      title: Text(homeController.userlist.value.data![index].firstName.toString()));
                });

          case Status.Error:
            return Text(homeController.error.toString() );
        }

      }),)
    );
  }
}
