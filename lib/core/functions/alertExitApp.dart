import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

alertExitApp() {
  return Get.defaultDialog(
    title: 'Confirm Exit',
    middleText: 'Are you sure you want to exit?',
    actions: [
      ElevatedButton(
          onPressed: () {
            exit(0);
          },
          child: const Text('Confirm')),
      ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child:const Text('Cancel')),
    ],
  );
}
