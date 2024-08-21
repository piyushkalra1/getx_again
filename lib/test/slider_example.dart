
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_again/test/slider_counter.dart';
class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  final SliderCounter sliderCounter  = Get.put(SliderCounter());

  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(()=>  Container(
            height: Get.height*.2,
            color: Colors.red.withOpacity(sliderCounter.opacity.value),
          ),
          ),

          Obx(()=> Slider(value: sliderCounter.opacity.value, onChanged: (value){
         sliderCounter.changeopacity(value);

          })),



        ],
      ),
    );
  }
}
