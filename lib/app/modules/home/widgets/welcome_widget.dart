/*
 * File name: welcome_widget.dart
 * Last modified: 2023.12.19
 * Author: Brain Station 23 - https://brainstation-23.com/
 * Copyright (c) 2023
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class WelcomeWidget extends StatelessWidget {
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: Get.theme.colorScheme.secondary),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 3,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text("Welcome,".tr, style: Get.textTheme.bodyLarge),
                Text('!', style: Get.textTheme.bodyLarge?.merge(TextStyle(color: Get.theme.primaryColor)))
              ],
            ),
            SizedBox(height: 8),
            Text("Can I help you something?".tr, style: Get.textTheme.bodySmall?.merge(TextStyle(color: Get.theme.primaryColor))),
            SizedBox(height: 22),
          ],
        ),
      ),
    );
  }
}
