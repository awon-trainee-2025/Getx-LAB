import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lab/page_1.dart';

void main() {
  runApp(GetMaterialApp(home:  MyApp(), 
  getPages: [ GetPage(name: "/page_1", page:() => Page1())],));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
      child: ElevatedButton(onPressed: (){
        // Get.to(Page1());
        // Get.offAll(Page1());
        // Get.toNamed("/page_1");
        Get.offAllNamed("/page_1");


      }, child: Text("home page")),
      ),
      
    );
  }
}

