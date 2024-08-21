
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_again/test/switch_controller.dart';

class Switchscreen extends StatefulWidget {
  const Switchscreen({super.key});

  @override
  State<Switchscreen> createState() => _SwitchscreenState();
}

class _SwitchscreenState extends State<Switchscreen> {
   SwitchController switchController = Get.put(SwitchController());


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("data"),
            Obx(()=>  Switch(value: switchController.newvalue.value, onChanged:(value){
            switchController.setSwitch(value);
            }),)

          ],)
        ],
      ),
    );
  }
}
