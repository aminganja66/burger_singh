import 'package:burger_singh/app/core/app_images.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeBannerView extends GetView {
  const HomeBannerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(AppImages.banner, fit: BoxFit.cover),
      ),
    );
  }
}