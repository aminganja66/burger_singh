import 'package:burger_singh/app/core/app_colors.dart';
import 'package:burger_singh/app/core/app_images.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeBottomNavBarView extends GetView {
  const HomeBottomNavBarView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        boxShadow: [BoxShadow(color: AppColors.grey.withValues(alpha: 0.1), offset: Offset(0, -2), blurRadius: 10)],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(AppImages.home, height: 25, width: 25, color: AppColors.red),
            Image.asset(AppImages.menu, height: 25, width: 25, color: AppColors.grey),
            Image.asset(AppImages.cart, height: 25, width: 25, color: AppColors.grey),
            Image.asset(AppImages.user, height: 25, width: 25, color: AppColors.grey),
          ],
        ),
      ),
    );
  }
}