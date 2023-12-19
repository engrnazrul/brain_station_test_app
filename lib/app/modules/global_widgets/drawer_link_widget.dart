/*
 * File name: drawer_link_widget.dart
 * Last modified: 2023.12.19 at 10:25
 * Author: Brain Station 23 - https://brainstation-23.com/
 * Copyright (c) 2023
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerLinkWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final ValueChanged<void> onTap;

  const DrawerLinkWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap('');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Row(
          children: [
            Icon(
              icon,
              color: Get.theme.focusColor.withOpacity(1),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              width: 1,
              height: 24,
              color: Get.theme.focusColor.withOpacity(0.2),
            ),
            Expanded(
              child: Text(text.tr, style: Get.textTheme.bodyMedium?.merge(TextStyle(fontSize: 14))),
            ),
          ],
        ),
      ),
    );
  }
}
