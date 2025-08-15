import 'package:burger_singh/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/app_colors.dart';

class HomeRecommendedItemView extends GetView<HomeController> {
  const HomeRecommendedItemView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommended Item",
            style: TextStyle(color: AppColors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              return _item(
                price: controller.homeRecommendedItem[index].price!,
                image: controller.homeRecommendedItem[index].image!,
                title: controller.homeRecommendedItem[index].title,
              );
            },
            separatorBuilder: (_, i) {
              return SizedBox(height: 10);
            },
            itemCount: controller.homeRecommendedItem.length,
          ),
        ],
      ),
    );
  }

  Widget _item({required String title, required int price, required String image}) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [BoxShadow(color: AppColors.black.withValues(alpha: 0.1), offset: Offset(0, 2), blurRadius: 10)],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15,
          children: [
            Container(
              height: 135,
              width: 135,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),

                  Text(
                    "Spicy panner patty served whole...",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.grey),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "Customization Available",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: AppColors.green),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "₹${price}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    overflow: TextOverflow.ellipsis,
                  ),
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
          ],
        ),
      ),
    );
  }
}