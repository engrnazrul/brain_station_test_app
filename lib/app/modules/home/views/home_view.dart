/*
 * File name: home_view.dart
 * Last modified: 2023.12.19
 * Author: Brain Station 23 - https://brainstation-23.com/
 * Copyright (c) 2023
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../providers/laravel_provider.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
          onRefresh: () async {
            Get.find<LaravelApiClient>().forceRefresh();
            await controller.refreshHome(showMessage: true);
            Get.find<LaravelApiClient>().unForceRefresh();
          },
          child: CustomScrollView(
            primary: true,
            shrinkWrap: false,
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                expandedHeight: 80,
                elevation: 1.5,
                floating: true,
                iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
                title: Text(
                  "GitHub Repository",
                  style: Get.textTheme.titleLarge,
                ),
                centerTitle: true,
                automaticallyImplyLeading: false,
                leading:  IconButton(
                  icon:  Icon(Icons.sort, color: Colors.black87),
                  onPressed: () => {Scaffold.of(context).openDrawer()},
                ),
                actions: [
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.filter_list_outlined, color: Colors.black87)
                  )
                ],
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.check_box_rounded),
                        title: Text("Repo List"),
                        subtitle: Text("Repo Details"),
                        trailing: Text("12-19-2023"),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
