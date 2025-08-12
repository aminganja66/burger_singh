import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeOurLocationView extends GetView {
  const HomeOurLocationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeOurLocationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeOurLocationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
