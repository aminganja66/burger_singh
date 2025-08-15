import 'package:burger_singh/app/core/app_colors.dart';
import 'package:burger_singh/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeOurBestSellerView extends GetView<HomeController> {
  const HomeOurBestSellerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Best Sellers",
            style: TextStyle(color: AppColors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 15,
            children: List.generate(
              controller.homeRecommendedItem.length,
              (index) => Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(controller.homeRecommendedItem[index].image!),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      colors: [Colors.transparent, AppColors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      spacing: 15,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              controller.homeRecommendedItem[index].title,
                              style: TextStyle(fontSize: 18, color: AppColors.white, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "₹ ${controller.homeRecommendedItem[index].price}",
                              style: TextStyle(fontSize: 16, color: AppColors.white, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.yellow),
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Center(
                              child: Text(
                                "Add",
                                style: TextStyle(color: AppColors.yellow, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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