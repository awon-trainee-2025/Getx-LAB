import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lab/page1.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: MyApp(),
      getPages: [GetPage(name: "/page-1", page: () => Page1())],
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //Get.to(Page1());
                //Get.offAll(Page1());
                //Get.toNamed("/page-1");
                Get.offNamed("/page-1");
              },
              child: Text('page 1'),
            ),
          ],
        ),
      ),
    );
  }
}
