import 'package:burger_singh/app/data/models/home_category_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<HomeCategoryModel> homeCategories = [
    HomeCategoryModel(
      image: 'assets/images/burger.png',
      title: 'Burger',
      color: 0XFFFFB84C, // Warm yellow-orange
    ),
    HomeCategoryModel(
      image: 'assets/images/fries.png',
      title: 'Fries',
      color: 0XFFFFD93D, // Bright golden yellow
    ),
    HomeCategoryModel(
      image: 'assets/images/momo.png',
      title: 'Momos',
      color: 0XFFFF9B9B, // Soft pink-red
    ),

    HomeCategoryModel(
      image: 'assets/images/drinks.png',
      title: 'Drinks',
      color: 0XFF6BCB77, // Fresh green
    ),
  ];
}