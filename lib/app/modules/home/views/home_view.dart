import 'package:burger_singh/app/core/app_colors.dart';
import 'package:burger_singh/app/core/app_images.dart';
import 'package:burger_singh/app/modules/home/views/home_category_view.dart';
import 'package:burger_singh/app/modules/home/views/home_featured_item_view.dart';
import 'package:burger_singh/app/modules/home/views/home_our_location_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'home_banner_view.dart';
import 'home_our_best_seller_view.dart';
import 'home_recommended_item_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: [
            HomeBannerView(),
            HomeCategoryView(),
            HomeOurBestSellerView(),
            HomeFeaturedItemView(),
            HomeRecommendedItemView(),
            HomeOurLocationView(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      leading: Hero(
        tag: "logo",
        child: Padding(padding: const EdgeInsets.all(5), child: Image.asset(AppImages.logo)),
      ),
      titleSpacing: -5,
      leadingWidth: 70,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Location",
                style: TextStyle(color: AppColors.white, fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Icon(Icons.arrow_drop_down, color: AppColors.white),
            ],
          ),
          Text(
            "Prahlad Nagar, Ahmedabad",
            style: TextStyle(color: AppColors.white, fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ],
      ),

      backgroundColor: AppColors.red,
    );
  }
}