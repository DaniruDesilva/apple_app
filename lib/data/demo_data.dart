import 'package:apple_app/models/category_model.dart';

class DemoData {
  static List<String> sliderImages = [
    'https://www.macitynet.it/wp-content/uploads/2023/06/ios17-stand-by.jpg',
    'https://www.apple.com/v/ios/ios-17/a/images/meta/ios-17__ni2koxyri7m2_og.png',
    'https://www.livemint.com/lm-img/img/2023/09/13/1600x900/ios_17_1685986638198_1694582413023.png',
    'https://9to5mac.com/wp-content/uploads/sites/6/2023/07/iOS-17-public-beta.webp?w=1024',
  ];

  static List<CategoryModel> categories = [
    CategoryModel(image: 'assets/images/mac.png', name: 'Mac'),
    CategoryModel(image: 'assets/images/ipad.png', name: 'i Pad'),
    CategoryModel(image: 'assets/images/iphone.png', name: 'i Phone'),
    CategoryModel(image: 'assets/images/watch.png', name: 'Watch'),
    CategoryModel(image: 'assets/images/airpods.png', name: 'AirPods'),
  ];
}
