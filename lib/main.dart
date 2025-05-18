import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lab/views/page_1.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const MyApp()),
        GetPage(name: '/page1', page: () => const Page1()),
      ],
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed('/page1');
          },
          child: const Text('Go to Page1'),
        ),
      ),
    );
  }
}
