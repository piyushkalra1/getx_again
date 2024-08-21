
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomrTest extends StatefulWidget {
  const HomrTest({super.key});

  @override
  State<HomrTest> createState() => _HomrTestState();
}

class _HomrTestState extends State<HomrTest> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          TextButton(onPressed: (){
            Get.updateLocale(Locale('en'));
          }, child: Text("English")),
          TextButton(onPressed: (){
            Get.updateLocale(Locale('hi'));
          }, child: Text("Hindi")),
        ],
      ),
    );
  }
}