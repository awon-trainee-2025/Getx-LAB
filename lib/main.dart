import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lab/views/page_1.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: const MyApp(),
      getPages: [GetPage(name: '/page1', page: () => Page1())],
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Get.to(() => Page1());
            Get.toNamed('/page1');
            // Get.offAllNamed('/page1');
          },
          child: Text("go to page1"),
        ),
      ),
    );
  }
}
