import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lab/page_1.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: const MyApp(),
      getPages: [GetPage(name: '/page_1', page: () => const Page1())],
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      appBar: AppBar(title: const Text('GetX Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // navigator.push
            // Get.to(Page1());
            //
            //Get.offAll(Page1());
            Get.toNamed('/page_1');
            Get.offAllNamed('/page_1');
          },
          child: const Text('Go to Second Page'),
        ),
      ),
    );
  }
}
