import 'package:burger_singh/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/app_colors.dart';

class HomeOurLocationView extends GetView<HomeController> {
  const HomeOurLocationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Our Location",
            style: TextStyle(color: AppColors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 10,
            children: List.generate(
              controller.ourLocations.length,
              (index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  //color: AppColors.red,
                  gradient: LinearGradient(colors: [AppColors.yellow, AppColors.red]),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Text(
                    controller.ourLocations[index],
                    style: TextStyle(color: AppColors.white, fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}