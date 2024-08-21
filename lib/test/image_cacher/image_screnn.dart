import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'image_picker_controller.dart';

class ImageScrenn extends StatefulWidget {
  const ImageScrenn({super.key});

  @override
  State<ImageScrenn> createState() => _ImageScrennState();
}

class _ImageScrennState extends State<ImageScrenn> {

  ImagePickerController controller = Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:  Obx(()=>Column(
        children: [
          CircleAvatar(
            backgroundImage: controller.imagepath.isNotEmpty?FileImage(File(controller.imagepath.toString())):
            null,
          ),
          TextButton(onPressed: (){
            controller.getImage();
          }, child: Text("pick")),
        ],
      ))
    );
  }
}
