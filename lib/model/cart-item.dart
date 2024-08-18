import 'package:food_delivery_app/model/food.dart';

class cartitem {
  food Food;
  List<addon> selectaddon;
  int quantity;

  cartitem({
    required this.Food,
    required this.selectaddon,
     this.quantity = 1,
  });

  double get totalPrice {
    double addonsPrice = selectaddon.fold(0, (sum, addon) => sum + addon.price);
    return (Food.price + addonsPrice) * quantity;
  }
}
