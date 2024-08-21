import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar("Probus", "I am here",
        // borderColor: Colors.red,
          duration: Duration(seconds: 4)
        );
      },),
      body: Column(
        children: [
        Container(
          color: Colors.green,
          child:   ListTile(
            title: Text("Getx Dialogue alet"),
            subtitle: Text("import 'package:get/get.dart';"),
            onTap: (){
              Get.defaultDialog(title: "alert",titlePadding: EdgeInsets.only(top: 20),
                middleText: "Are you sure",
                contentPadding: EdgeInsets.all(12),
                confirm: TextButton(onPressed: (){}, child: Text("ok")),
                cancel:  TextButton(onPressed: (){Get.back();}, child: Text("Cancel")),
              );
            },
          ),
        ),
          Container(
            color: Colors.pink,
            child:   ListTile(
              title: Text("Getx Bottomsheet alet"),
              subtitle: Text("import '"),
              onTap: (){
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
                  child: Column(
                    children: [
                      ListTile(title: Text("light theme"),leading: Icon(Icons.light_mode),onTap: (){
                        Get.changeTheme(ThemeData.light());
                      },),
                      ListTile(title: Text("Dark theme"),leading: Icon(Icons.dark_mode),onTap: (){
                        Get.changeTheme(ThemeData.dark());
                      },)

                    ],
                  ),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
