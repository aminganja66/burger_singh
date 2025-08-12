import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeOurBestSellerView extends GetView {
  const HomeOurBestSellerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeOurBestSellerView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeOurBestSellerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
