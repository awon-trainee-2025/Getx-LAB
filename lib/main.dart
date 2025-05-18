import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lab/views/page_1.dart';

void main() {
  // second route management way
  runApp(
    GetMaterialApp(
      home: const MyApp(),
      getPages: [GetPage(name: '/page-1', page: () => Page1())],
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Home page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // old way
            // 1- Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Page1()),
            // );

            // 2-
            // Navigator.pushAndRemoveUntil(
            //   context,
            //   MaterialPageRoute(builder: (context) => Page1()),
            //   (route) => false,
            // );

            // get way
            // Get.to(Page1());
            // 2- Get.offAll(Page1());

            // 3- get pages
            Get.toNamed('/page-1');

            //lujain

            Get.offAllNamed('/page-1');
          },
          child: Text('Go to page 1'),
        ),
      ),
    );
  }
}
