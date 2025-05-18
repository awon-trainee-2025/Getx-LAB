import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('page 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text('Back to hemo page'),
        ),
      ),
    );
  }
}
