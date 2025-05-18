import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back();
                        // Navigator.pop(context);

          },
          child: Text("get back to home"),
        ),
      ),
    );
  }
}
