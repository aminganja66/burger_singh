import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeBannerView extends GetView {
  const HomeBannerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeBannerView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeBannerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
