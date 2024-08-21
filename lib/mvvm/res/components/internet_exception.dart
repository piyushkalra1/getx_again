
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors/appcolors.dart';

class InternetExceptionWidget extends StatefulWidget {
  final VoidCallback onpress;
  const InternetExceptionWidget({required this.onpress});

  @override
  State<InternetExceptionWidget> createState() => _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: Get.height*.15),
          Icon(Icons.cloud_off,color: Appcolors.redcolor,),
          Text('internet exception'.tr,textAlign: TextAlign.center,),
          SizedBox(height: Get.height*.15),
          InkWell(
            onTap: (){
              widget.onpress;
            },
            child:  Container(height: 44 ,width: 160,
              decoration: BoxDecoration(
                color: Appcolors.redcolor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text('Retry',style: Theme.of(context).textTheme.titleMedium,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
