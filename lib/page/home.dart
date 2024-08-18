import 'package:flutter/material.dart';
import 'package:food_delivery_app/component/Drawer.dart';
import 'package:food_delivery_app/component/app_bar.dart';
import 'package:food_delivery_app/component/description.dart';
import 'package:food_delivery_app/component/my_food.dart';
import 'package:food_delivery_app/component/my_location.dart';
import 'package:food_delivery_app/component/tab_bar.dart';
import 'package:food_delivery_app/model/food.dart';
import 'package:food_delivery_app/model/resaturant.dart';
import 'package:food_delivery_app/page/food-page.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: foodcategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<food> _filterMenuByCategory(foodcategory category, List<food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInCategory(List<food> fullMenu) {
    return foodcategory.values.map((category) {
      List<food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        // physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return MyFood(
              Food: food,
              onTap: () {
                print("Tapped on ${food.name}");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => foodpage(Food: food),
                  ),
                );
              });
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          App_Bar(
            title: Tab_Bar(
              tabController: _tabController,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const MyLocation(),
                const Description(),
              ],
            ),
          )
        ],
        body: Consumer<resaturant>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInCategory(restaurant.menu),
          ),
        ),
      ),
    );
  }
}
