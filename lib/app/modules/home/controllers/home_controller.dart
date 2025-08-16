import 'package:burger_singh/app/core/app_colors.dart';
import 'package:burger_singh/app/core/app_images.dart';
import 'package:burger_singh/app/data/models/home_category_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<HomeCommonDataWidget> homeCategories = [
    HomeCommonDataWidget(
      image: AppImages.burgerCat,
      title: 'Burger',
      color: AppColors.yellow.withValues(alpha: 0.5), // Warm yellow-orange
    ),
    HomeCommonDataWidget(
      image: AppImages.fries,
      title: 'Fries',
      color: AppColors.yellow.withValues(alpha: 0.5), // Warm yellow-orange
    ),
    HomeCommonDataWidget(
      image: AppImages.momo,
      title: 'Momos',
      color: AppColors.yellow.withValues(alpha: 0.5), // Warm yellow-orange
    ),

    HomeCommonDataWidget(
      image: AppImages.soda,
      title: 'Drinks',
      color: AppColors.yellow.withValues(alpha: 0.5), // Warm yellow-orange
    ),
  ];

  List<HomeCommonDataWidget> homeRecommendedItem = [
    HomeCommonDataWidget(image: AppImages.burger, title: 'Udta Punjab 2.0', price: 199),
    HomeCommonDataWidget(image: AppImages.mojito, title: 'Gulaabo', price: 49),
  ];

  List<String> ourLocations = ["Ahmedabad", "Surat", "Mumbai", "Delhi"];
}