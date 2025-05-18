import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/page_1.dart';

void main() {
  runApp(
  GetMaterialApp(home: const MyApp() ,
  getPages: [GetPage(name: '/page-1', page:() => Page1())],
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
        useMaterial3: true,
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
        title: const Text('Home page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigation using GetX
            // Get.to(() => const Page1());
            // Get.offAll(Page1());
           Get.toNamed('/page-1');
          // Get.offAllNamed('/page-1');
          },
          child: const Text('Go to page 1'),
        ),
      ),
    );
  }
}











