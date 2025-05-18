import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lab/main.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Get.back();
                Get.offAll(MyApp());
              },
              child: Text('back to home page'),
            ),
          ],
        ),
      ),
    );
  }
}
