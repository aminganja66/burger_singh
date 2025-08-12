import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeRecommendedItemView extends GetView {
  const HomeRecommendedItemView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeRecommendedItemView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeRecommendedItemView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
