import 'package:flutter/material.dart';

class ToolsImage {
  // عند اضافة صورة جديدة يجب اضافة الاتي   (الاسم الخاص بالوجبة - السعر الخاص بالوجبة,القيمة الاولية الخاصة بالدروب داون مينيو)

  //رابط الصورة الخاصة بالوجبة
  static List images = [
    "https://freepngimg.com/thumb/burger/2-2-burger-free-download-png.png",
    "https://freepngimg.com/thumb/food/2-2-food-png-hd.png",
    "https://freepngimg.com/thumb/pizza/2-pizza-png-image.png",
    "https://freepngimg.com/thumb/egg/2-fried-egg-png-image.png",
    "https://freepngimg.com/thumb/pizza/2-pizza-png-image.png",
  ];
  //الاسم الخاص بالوجبة
  static List namefoods = [
    "Burger",
    "Food",
    "Pizza",
    "Fried Egg",
    "Pizza hot",
  ];
  //السعر الخاص بالوجبة
  static List prise = [
    "50",
    "99",
    "75",
    "30",
    "100",
  ];
  // القيمة الخاصة بالدروب داون م=نيو
  static List<String> listSelcted = [
    "حدد الكمية",
    "حدد الكمية",
    "حدد الكمية",
    "حدد الكمية",
    "حدد الكمية",
  ];
  static Color mainColor = Color.fromRGBO(144, 12, 63, 1);
  static Color scColor = Colors.black;
  static Color nColor = Color.fromRGBO(255, 195, 0, 1);
}
