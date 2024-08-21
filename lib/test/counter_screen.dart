
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'conter_controller.dart';


class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.incremenrCounter();
        },
      ),
      body: Center(child: Obx((){
        return Text(controller.counter.toString());
      })),
    );
  }
}