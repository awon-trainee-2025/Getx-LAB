import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lab/views/page_1.dart';

void main() {
  runApp(
    GetMaterialApp(
    home:const MyApp(),
  getPages: [GetPage(name: '/page-1', page:()=> Page1())],
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('my home page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed:(){
           // Get.to(Page1());
           Get.toNamed('/page-1');
          //  Get.offAllNamed('/page-1');
          }, 
          child: Text('go to page 1'),
          ),
      ),
      );
  }
}