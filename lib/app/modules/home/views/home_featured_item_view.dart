import 'package:burger_singh/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/app_colors.dart';

class HomeFeaturedItemView extends GetView<HomeController> {
  const HomeFeaturedItemView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Featured items",
            style: TextStyle(color: AppColors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            childAspectRatio: 0.6,
          ),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            return Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(color: AppColors.black.withValues(alpha: 0.1), offset: Offset(0, 2), blurRadius: 10),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: (Get.width / 2) - 40,
                      width: (Get.width / 2) - 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage(controller.homeRecommendedItem[index].image!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      controller.homeRecommendedItem[index].title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "₹${controller.homeRecommendedItem[index].price}",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 10),

                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.yellow),
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.yellow.withValues(alpha: 0.1),
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
            );
          },
          itemCount: controller.homeRecommendedItem.length,
        ),
      ],
    );
  }
}