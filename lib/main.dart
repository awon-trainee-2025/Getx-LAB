import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_lab/views/page_1.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: const MyApp(),
      getPages: [GetPage(name: "/page-1", page: () => Page1())],
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Get.to(Page1());
                Get.dialog(
                  Dialog(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => Get.to(Page1()),
                            child: Text("Go to page 1 via Get.to()"),
                          ),
                          ElevatedButton(
                            onPressed: () => Get.toNamed("page-1"),
                            child: Text("Go to page 1 via Get.toNamed()"),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Text("Show Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
