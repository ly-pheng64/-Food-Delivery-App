enum foodcategory { burgers, salads, sides, desserts, drinks }

class food {
  final String name;
  final String dis;
  final String image;
  final double price;
  final foodcategory category;
  final List<addon> availableaddon;

  food({
    required this.name,
    required this.dis,
    required this.image,
    required this.price,
    required this.category,
    required this.availableaddon,
  });
}



class addon {
  String name;
  double price;
  addon({
    required this.name,
    required this.price,
  });
}
