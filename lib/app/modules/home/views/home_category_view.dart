import 'package:burger_singh/app/core/app_colors.dart';
import 'package:burger_singh/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeCategoryView extends GetView<HomeController> {
  const HomeCategoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories",
            style: TextStyle(color: AppColors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              controller.homeCategories.length,
              (index) => _category(controller.homeCategories[index].color!, controller.homeCategories[index].title),
            ),
          ),
        ],
      ),
    );
  }

  Widget _category(Color color, String title) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: color),
        ),
        Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}