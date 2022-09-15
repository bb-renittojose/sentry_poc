import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text('Click for Exception'),
              onPressed: () => throw Exception(),
            ),
          ],
        ),
      ),
    );
  }
}
