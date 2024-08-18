import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/cart-item.dart';
import 'package:intl/intl.dart';
import 'food.dart';

class resaturant extends ChangeNotifier {
  final List<food> _menu = [
    // burger
    food(
      name: 'burger',
      dis: 'juicy chargrilled beef burger loaded with melted cheese ',
      image: 'images/1.jpg',
      price: 1.50,
      category: foodcategory.burgers,
      availableaddon: [
        addon(name: 'Exrta cheese', price: 0.50),
        addon(name: 'Exrta pickle', price: 0.50),
        addon(name: 'Exrta beef', price: 1.00),
      ],
    ),
    food(
      name: 'BBQ Burger',
      dis:
          'Grilled burgers are such a comfort food to enjoy. A juicy and tender grilled burger ',
      image: 'images/bbq.jpg',
      price: 1.50,
      category: foodcategory.burgers,
      availableaddon: [
        addon(name: 'Exrta cheese', price: 0.50),
        addon(name: 'Exrta pickle', price: 0.50),
        addon(name: 'Exrta beef', price: 1.00),
      ],
    ),
    food(
      name: 'Double beef Burger',
      dis:
          'A double helping of all-natural beef, crisp lettuce, fresh tomato + onion, house pickles, ketchup + mayo on a buttery brioche bun. ',
      image: 'images/dobule.jpg',
      price: 3.50,
      category: foodcategory.burgers,
      availableaddon: [
        addon(name: 'Exrta cheese', price: 0.50),
        addon(name: 'Exrta pickle', price: 0.50),
        addon(name: 'Exrta beef', price: 1.00),
      ],
    ),
    food(
      name: 'Double Cheese burger',
      dis:
          'Cheeseburger features two 100% pure all beef patties seasoned with just a pinch of salt and pepper',
      image: 'images/DoubleCheeseburger.jpg',
      price: 2.50,
      category: foodcategory.burgers,
      availableaddon: [
        addon(name: 'Exrta cheese', price: 0.50),
        addon(name: 'Exrta pickle', price: 0.50),
        addon(name: 'Exrta beef', price: 1.00),
      ],
    ),
    food(
      name: 'spicy burger',
      dis: 'These burgers are chock full of spicy peppers.  ',
      image: 'images/spicy.jpg',
      price: 2.50,
      category: foodcategory.burgers,
      availableaddon: [
        addon(name: 'Exrta cheese', price: 0.50),
        addon(name: 'Exrta spicy peppers', price: 0.50),
        addon(name: 'Exrta beef', price: 1.00),
      ],
    ),
    // salad
    food(
      name: 'Garden Salad',
      dis:
          'Garden salad is one of the most basic salads, yet it’s also one of the most popular ',
      image: 'images/2.jpg',
      price: 2.50,
      category: foodcategory.salads,
      availableaddon: [
        addon(name: 'Exrta Lettuce', price: 2.50),
        addon(name: 'Exrta Cucumbers', price: 1.50),
        addon(name: 'Exrta Tomatoes', price: 1.50),
      ],
    ),
    food(
      name: ' Chopped Salad',
      dis:
          'This Mediterranean Chopped Salad is fit for a crowd! It’s not only large enough to feed 6-8 people, ',
      image: 'images/ChoppedSalad.jpg',
      price: 3.50,
      category: foodcategory.salads,
      availableaddon: [
        addon(name: 'Exrta Lettuce', price: 2.50),
        addon(name: 'Exrta Cucumbers', price: 1.50),
        addon(name: 'Exrta Tomatoes', price: 1.50),
      ],
    ),
    food(
      name: 'Big Italian Salad',
      dis: 'This Italian salad pairs nicely with Italian comfort food. You’ll love the homemade dressing! ',
      image: 'images/BigItalianSalad.jpg',
      price: 2.50,
      category: foodcategory.salads,
      availableaddon: [
        addon(name: 'Exrta Lettuce', price: 2.50),
        addon(name: 'Exrta Cucumbers', price: 1.50),
        addon(name: 'Exrta Tomatoes', price: 1.50),
      ],
    ),
    food(
      name: 'HealthyCobbSalad',
      dis: 'This hunger-busting Cobb Salad is bursting with fresh vegetables and protein-rich chicken, hard-boiled eggs,',
      image: 'images/HealthyCobbSalad.jpg',
      price: 1.50,
      category: foodcategory.salads,
      availableaddon: [
        addon(name: 'Exrta Lettuce', price: 2.50),
        addon(name: 'Exrta Cucumbers', price: 1.50),
        addon(name: 'Exrta Tomatoes', price: 1.50),
      ],
    ),
    food(
      name: 'Rainbow Salad',
      dis: 'By choosing foods from every colour of the rainbow, you maximize the number of different micronutrients you’re consuming ',
      image: 'images/GardenSalad.jpg',
      price: 1.50,
      category: foodcategory.salads,
      availableaddon: [
        addon(name: 'Exrta Lettuce', price: 2.50),
        addon(name: 'Exrta Cucumbers', price: 1.50),
        addon(name: 'Exrta Tomatoes', price: 1.50),
      ],
    ),
    // side
    food(
      name: 'Kongnamul Muchim',
      dis: 'Nutty, crunchy, and delicious soybean sprout side dish! This recipe shows two ways to prepare – mild and spicy. ',
      image: 'images/Kongnamul Muchim.jpg',
      price: 1.50,
      category: foodcategory.sides,
      availableaddon: [
        addon(name: 'Exrta soybean', price: 0.50),
        addon(name: 'Exrta garlic', price: 0.50),
        addon(name: 'Exrta pepper ', price: 0.50),
      ],
    ),
    food(
      name: 'Sigeumchi Namul',
      dis: 'Sigeumchi namul is an easy Korean side dish (banchan) made with spinach. Simply blanch the spinach and season it. This recipe shows different ways to season the spinach. ',
      image: 'images/Sigeumchi Namul.jpg',
      price: 1.50,
      category: foodcategory.sides,
      availableaddon: [
        addon(name: 'Exrta bunch spinach', price: 0.50),
        addon(name: 'Exrta scallion ', price: 0.50),
        addon(name: 'Exrta pepper ', price: 0.50),
      ],
    ),
    food(
      name: 'Oi Muchim',
      dis: 'this Korean spicy cucumber salad with any crunchy cucumbers. It’ll add delicious spiciness to any Korean meal.',
      image: 'images/Oi Muchim.jpg',
      price: 1.50,
      category: foodcategory.sides,
      availableaddon: [
        addon(name: 'Exrta cucumber ', price: 0.50),
        addon(name: 'Exrta Korean red chili pepper', price: 0.50),
        addon(name: 'Exrta garlic minced', price: 0.50),
      ],
    ),
    food(
      name: 'Parmesan Orzo',
      dis: 'Approximate nutritional information is for 3 servings made with heavy cream.',
      image: 'images/Parmesan Orzo.jpg',
      price: 1.50,
      category: foodcategory.sides,
      availableaddon: [
        addon(name: 'Exrta milk', price: 0.50),
        addon(name: 'Exrta pepper', price: 0.50),
        addon(name: 'Exrta Parsley ', price: 0.50),
      ],
    ),
    food(
      name: 'French Onion Twice-Baked Potatoes',
      dis: 'A recent craving for French onion soup sent me spiraling down a Pinterest rabbit hole where, along the way, ',
      image: 'images/French Onion Twice-Baked Potatoes.jpg',
      price: 1.50,
      category: foodcategory.sides,
      availableaddon: [
        addon(name: 'Exrta Potatoes', price: 0.50),
        addon(name: 'Exrta Onion', price: 0.50),
        addon(name: 'Exrta sour cream', price: 0.50),
      ],
    ),

    // dessert
    food(
      name: 'Caramel-Topped Ice Cream ',
      dis: 'This ice cream cake is the perfect frozen dessert with fudge, caramel and salty pretzels!',
      image: 'images/Caramel-Topped Ice Cream.jpg',
      price: 1.50,
      category: foodcategory.desserts,
      availableaddon: [
        addon(name: 'Exrta ice cream', price: 1.00),
        addon(name: 'Exrta vanilla ', price: 0.50),
        addon(name: 'Exrta cookies', price: 0.50),
      ],
    ),
    food(
      name: 'Cherry Delight',
      dis: 'This smooth and creamy cheesecake-like treat is light, sweet and pretty',
      image: 'images/Cherry Delight.jpg',
      price: 1.50,
      category: foodcategory.desserts,
      availableaddon: [
        addon(name: 'Exrta desserts', price: 0.50),
        addon(name: 'Exrta desserts', price: 0.50),
        addon(name: 'Exrta desserts', price: 0.50),
      ],
    ),
    food(
      name: 'Oreo Dessert Pots',
      dis: 'Oreo Dessert Pots which are made with layers of crushed Oreos and Oreo cheesecake',
      image: 'images/Oreo Dessert Pots.jpg',
      price: 1.50,
      category: foodcategory.desserts,
      availableaddon: [
        addon(name: 'Exrta desserts', price: 0.50),
        addon(name: 'Exrta desserts', price: 0.50),
        addon(name: 'Exrta desserts', price: 0.50),
      ],
    ),
    food(
      name: 'Blackberry Pie',
      dis: 'dessert this is dessert eat it ',
      image: 'images/Blackberry Pie.jpg',
      price: 1.50,
      category: foodcategory.desserts,
      availableaddon: [
        addon(name: 'Exrta Blackberry', price: 0.50),
        addon(name: 'Exrta sweet', price: 0.50),
        addon(name: 'Exrta cream', price: 0.50),
      ],
    ),
    food(
      name: 'Lemon and yoghurt syrup cakes',
      dis: 'Create these tasty syrup cakes that incorporates healthier options of coconut sugar, spelt flour and low-fat Greek yoghurt. ',
      image: 'images/Lemon and yoghurt syrup cakes.jpeg',
      price: 1.50,
      category: foodcategory.desserts,
      availableaddon: [
        addon(name: 'Exrta Lemon', price: 0.50),
        addon(name: 'Exrta yoghurt', price: 0.50),
        addon(name: 'Exrta cream', price: 0.50),
      ],
    ),

    // drink

    food(
      name: 'Shirley Temple',
      dis: 'The Shirley Temple is probably the most famous mocktail ever ',
      image: 'images/Shirley Temple.jpg',
      price: 1.50,
      category: foodcategory.drinks,
      availableaddon: [
        addon(name: 'Exrta ice', price: 0.00),
        addon(name: 'Exrta cherries', price: 0.50),
        addon(name: 'Exrta lime juice.', price: 0.50),
      ],
    ),
    food(
      name: 'Berry Smash',
      dis: 'Hibiscus tea gives Lauren “LP” Paylor’s non-alcoholic drink its striking hue. ',
      image: 'images/Berry Smash.jpg',
      price: 1.50,
      category: foodcategory.drinks,
      availableaddon: [
        addon(name: 'Exrta strawberries', price: 0.50),
        addon(name: 'Exrta mint leaves', price: 0.50),
        addon(name: 'Exrta raspberries', price: 0.50),
      ],
    ),
    food(
      name: 'Garden Collins',
      dis: 'Lauren “LP” Paylor’s non-alcoholic highball is extra-refreshing.',
      image: 'images/Garden Collins.jpg',
      price: 1.50,
      category: foodcategory.drinks,
      availableaddon: [
        addon(name: 'Exrta  green tea', price: 0.50),
        addon(name: 'Exrta lemon juice', price: 0.50),
        addon(name: 'Exrta Seedlip Garden', price: 0.50),
      ],
    ),
    food(
      name: 'Mental Note',
      dis: 'Beet juice stars in this earthy, tart non-alcoholic drink from Natasha David.',
      image: 'images/Mental Note.jpg',
      price: 1.50,
      category: foodcategory.drinks,
      availableaddon: [
        addon(name: 'Exrta fresh beet juice', price: 0.50),
        addon(name: 'Exrta  grapefruit crescent', price: 0.50),
        addon(name: 'Exrta lemon juice, freshly squeezed', price: 0.50),
      ],
    ),
    food(
      name: 'Gin-Free & Tonic',
      dis: 'A simple juniper syrup can be made ahead of time and quickly mixed into a beverage that quietly echoes the sweet and bitter comfort ',
      image: 'images/Gin-Free & Tonic.jpg',
      price: 1.50,
      category: foodcategory.drinks,
      availableaddon: [
        addon(name: 'Exrta fresh beet juice', price: 0.50),
        addon(name: 'Exrta grapefruit crescent', price: 0.50),
        addon(name: 'Exrta  lemon juice, freshly squeezed', price: 0.50),
      ],
    ),
  ];

  List<food> get menu => _menu;
  List<cartitem> get cart => _cart;
  final List<cartitem> _cart = [];

  void addToCart(food Food, List<addon> selectaddon) {
    cartitem? Cartitem = _cart.firstWhereOrNull(
      (item) {
        bool isSameFood = item.Food == Food; // Corrected from 'food' to 'Food'
        bool isSameAddon = ListEquality().equals(item.selectaddon, selectaddon);
        return isSameFood && isSameAddon;
      },
    );
    if (Cartitem != null) {
      Cartitem.quantity++;
    } else {
      _cart.add(
        cartitem(Food: Food, selectaddon: selectaddon),
      );
    }
    notifyListeners();
  }

  void removeFromCart(cartitem Cartitem) {
    int Cartindex = _cart.indexOf(Cartitem);

    if (Cartindex != -1) {
      if (_cart[Cartindex].quantity > 1) {
        _cart[Cartindex].quantity--;
      } else {
        _cart.remove(Cartindex);
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;

    for (cartitem Cartitem in _cart) {
      double itemTotal = Cartitem.Food.price;
      for (addon Addon in Cartitem.selectaddon) {
        itemTotal += Addon.price;
      }
      total += itemTotal * Cartitem.quantity;
    }
    return total;
  }

  int getTotalInTheCount() {
    int totalItemCount = 0;
    for (cartitem Cartitem in _cart) {
      totalItemCount += Cartitem.quantity;
    }

    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln('Here your Receipt');
    receipt.writeln('');

    String formatDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formatDate);
    receipt.writeln(formatDate);
    receipt.writeln('-----------');

    for (final cartitem in _cart) {
      receipt.writeln(
          '${cartitem.quantity} x ${cartitem.Food.name} - ${_formatprice(cartitem.Food.price)}');
      if (cartitem.selectaddon.isNotEmpty) {
        receipt.writeln('  Add-ons ${_formataddon(cartitem.selectaddon)}');
      }
      receipt.writeln('');
    }
    receipt.writeln('-----------');
    receipt.writeln('');
    receipt.writeln('total Item: ${getTotalInTheCount()}');
    receipt.writeln('total Price: ${_formatprice(getTotalPrice())}');

    return receipt.toString();
  }

  String _formatprice(double price) {
    return '\$${price.toStringAsFixed(2)}';
  }

  String _formataddon(List<addon> Addon) {
    return Addon.map((Addon) => '${Addon.name}(${_formatprice(Addon.price)})')
        .join();
  }
}
